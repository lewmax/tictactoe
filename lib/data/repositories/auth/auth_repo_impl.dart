import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:chat_app/core/utils/logger.dart';
import 'package:chat_app/data/core/mixins/repository_validation_mixin.dart';
import 'package:chat_app/data/datasources/user/user_data_source.dart';
import 'package:chat_app/data/remote/network_response.dart';
import 'package:chat_app/data/repositories/auth/auth_exception_handler.dart';
import 'package:chat_app/domain/entities/auth/app_auth_state.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/repositories/app/device_uuid_repository.dart';
import 'package:chat_app/domain/repositories/auth/auth_repo.dart';
import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart' as authh;
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:uuid/uuid.dart';

@LazySingleton(as: AuthRepo)
final class AuthRepoImpl with RepositoryValidationMixin implements AuthRepo {
  final UserDataSource _userDataSource;
  final DeviceUuidRepository _deviceUuidRepository;

  final _googleSignIn = GoogleSignIn();
  final _storage = FirebaseStorage.instance;
  final _auth = FirebaseAuth.instance;
  final _authState = BehaviorSubject<AppAuthState>(sync: true);
  StreamSubscription? _subscription;

  @FactoryMethod(preResolve: true)
  AuthRepoImpl._(
    this._userDataSource,
    this._deviceUuidRepository,
  );

  @FactoryMethod(preResolve: true)
  static Future<AuthRepoImpl> create(
    @injectable UserDataSource userDataSource,
    @injectable DeviceUuidRepository deviceUuidRepository,
  ) async {
    final instance = AuthRepoImpl._(
      userDataSource,
      deviceUuidRepository,
    );
    await instance._checkAuth();
    await instance._getOrCreateDeviceUuid();
    return instance;
  }

  @override
  ValueStream<AppAuthState> get authState => _authState.stream;

  @override
  User? get user => switch (_authState.valueOrNull) {
        Authenticated(:final user) => user,
        UnAuthenticated() => null,
        null => null,
      };

  @override
  Future<NetworkResponse> updateUser(User newUser, {File? Function()? newImage}) async {
    try {
      String? updatedImage = newUser.imageUrl;
      if (newImage != null) {
        final image = newImage();
        if (image == null) {
          await _deletePhoto(newUser.id.rawValue);
          updatedImage = null;
        } else {
          updatedImage = await _uploadUserImage(newUser.id.rawValue, image);
        }
      }

      await _userDataSource.updateUser(newUser.copyWith(imageUrl: () => updatedImage));
    } catch (e) {
      return NetworkResponse.failure(e.toString());
    }

    return NetworkResponse.success(null);
  }

  @override
  Future<NetworkResponse<bool>> signWithGoogle() async {
    return _handleSignIn(
      signInMethod: () async {
        final googleUser = await _googleSignIn.signIn();
        if (googleUser == null) {
          throw FirebaseAuthException(code: 'CANCELLED', message: 'Sign in cancelled');
        }
        final googleAuth = await googleUser.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        return _auth.signInWithCredential(credential);
      },
      providerName: 'Google',
    );
  }

  @override
  Future<NetworkResponse<bool>> signWithApple() async {
    // const String clientID = 'com.offbeat.tic-tic-tic-service';
    // const String redirectURL = 'https://flutter-chat-acda6.firebaseapp.com/__/auth/handler';

    return _handleSignIn(
      signInMethod: () async {
        final rawNonce = generateNonce();
        final nonce = sha256ofString(rawNonce);
        final appleCredential = await SignInWithApple.getAppleIDCredential(
          scopes: [AppleIDAuthorizationScopes.email, AppleIDAuthorizationScopes.fullName],
          nonce: Platform.isIOS ? nonce : null,
          // webAuthenticationOptions:
          // Platform.isIOS ? null : WebAuthenticationOptions(clientId: clientID, redirectUri: Uri.parse(redirectURL)),
        );
        final oauthCredential = AppleAuthProvider.credentialWithIDToken(
          appleCredential.identityToken!,
          rawNonce,
          AppleFullPersonName(givenName: appleCredential.givenName),
        );
        return _auth.signInWithCredential(oauthCredential);
      },
      providerName: 'Apple',
    );
  }

  @override
  Future<NetworkResponse<void>> signUpWithEmail({
    required String email,
    required String phone,
    required String password,
    required String name,
    required File? image,
  }) async {
    try {
      await signOut();
      final userCreds = await _auth.createUserWithEmailAndPassword(email: email, password: password);

      String? imageUrl;
      if (image != null) {
        imageUrl = await _uploadUserImage(userCreds.user!.uid, image);
      }

      final id = UserId(rawValue: userCreds.user!.uid);

      final newUser = User(id: id, name: name, email: email, phone: phone, imageUrl: imageUrl);
      _userDataSource.addUser(newUser);

      await _checkAuth();
      logDebug('User credentials: $userCreds', objectName: toString());

      return NetworkResponse.success(null);
    } on FirebaseAuthException catch (e) {
      logDebug('Firebase error while trying to sign up with email.\nDetails: $e', name: toString());
      return NetworkResponse.failure(e.code);
    } catch (e) {
      final message = 'Error while trying to sign up with email.\nDetails: $e';
      logDebug(message);
      return NetworkResponse.failure(message);
    }
  }

  @override
  Future<NetworkResponse<void>> signInWithEmail({
    required String email,
    required String password,
  }) async {
    return _handleSignIn(
      signInMethod: () => _auth.signInWithEmailAndPassword(email: email, password: password),
      providerName: 'Email',
    );
  }

  @override
  Future<NetworkResponse<void>> restorePassword({required String email}) async {
    try {
      await _auth.sendPasswordResetEmail(email: email).then((value) => NetworkResponse.success(null));
    } on FirebaseAuthException catch (e) {
      return NetworkResponse.failure(
        AuthExceptionHandler.generateErrorMessage(AuthExceptionHandler.handleAuthException(e)),
      );
    } catch (e) {
      return NetworkResponse.failure(e.toString());
    }

    return NetworkResponse.success(null);
  }

  @override
  Future<NetworkResponse<void>> signOut() async {
    try {
      await _googleSignIn.signOut();
      await _auth.signOut();
      _authState.add(const AppAuthState.unAuthenticated());
      logDebug(_auth.currentUser?.providerData);
      return NetworkResponse.success(null);
    } catch (e) {
      logDebug(e, objectName: toString());
      return NetworkResponse.failure(e.toString());
    }
  }

  Future<NetworkResponse<bool>> _handleSignIn({
    required Future<UserCredential> Function() signInMethod,
    required String providerName,
  }) async {
    try {
      await signOut();
      final userCreds = await signInMethod();
      if (userCreds.additionalUserInfo!.isNewUser) {
        await _registerByUserCreds(userCreds);
      }
      await _checkAuth();
      logDebug('User credentials: $userCreds', objectName: toString());
      return NetworkResponse.success(true);
    } on FirebaseAuthException catch (e) {
      logDebug('Firebase error while trying to sign in with $providerName.\nDetails: $e', name: toString());
      if (e.code.contains('CANCELLED')) {
        return NetworkResponse.success(false);
      }

      return NetworkResponse.failure(e.code);
    } catch (e) {
      final message = 'Error while trying to sign in with $providerName.\nDetails: $e';
      logDebug(message);
      if (message.contains('canceled')) {
        return NetworkResponse.success(false);
      }
      return NetworkResponse.failure(message);
    }
  }

  Future<void> _checkAuth() async {
    final userUid = _auth.currentUser?.uid;

    if (userUid != null) {
      // Fetch user authentication state
      final newAuthState = await _getUser(userUid);

      // If authenticated, start listening to user updates
      if (newAuthState is Authenticated) {
        _listenToUserUpdates(userUid);
      }
    } else {
      // Cancel any active subscription and update auth state to unauthenticated
      await _subscription?.cancel();
      _authState.add(const AppAuthState.unAuthenticated());
    }
  }

  Future<AppAuthState> _getUser(String id) async {
    final user = await _userDataSource.getUserById(UserId(rawValue: id));
    // final a = _auth.currentUser.phon;
    return user == null ? const AppAuthState.unAuthenticated() : AppAuthState.authenticated(user: user);
  }

  void _listenToUserUpdates(String id) {
    _subscription?.cancel();
    _subscription = _userDataSource.fetchUser(UserId(rawValue: id)).listen((user) {
      if (user != null) _authState.add(AppAuthState.authenticated(user: user));
    });
  }

  Future<void> _registerByUserCreds(UserCredential userCreds) async {
    final id = UserId(rawValue: userCreds.user!.uid);

    final newUser = User(
      id: id,
      name: userCreds.user!.displayName ?? 'Anonymous',
      email: userCreds.user!.email!,
      phone: userCreds.user!.phoneNumber,
      imageUrl: userCreds.user!.photoURL,
    );

    await _userDataSource.addUser(newUser);
  }

  Future<String> _uploadUserImage(String uid, File image) async {
    final ref = await _storage.ref().child('users/$uid/images/$uid').putFile(image);
    return await _storage.ref(ref.ref.fullPath).getDownloadURL();
  }

  Future<void> _deletePhoto(String uid) async {
    await _storage.ref().child('users/$uid/images/$uid').delete();
  }

  Future<String> _getOrCreateDeviceUuid() async {
    final previousDeviceUuid = _deviceUuidRepository.getDeviceUuid();
    if (previousDeviceUuid != null) return previousDeviceUuid;

    final newUuid = const Uuid().v4();
    await _deviceUuidRepository.setDeviceUuid(newUuid);
    return newUuid;
  }

  @override
  Future<NetworkResponse<void>> deleteUserAccount(String password) async {
    return validateAuthFuture(
      authRepo: this,
      handleError: true,
      func: (user) async {
        try {
          await _userDataSource.deleteUser(user.id);
          await _auth.currentUser!.delete();
          _authState.value = const AppAuthState.unAuthenticated();
          return NetworkResponse.success(null);
        } on FirebaseAuthException catch (e) {
          if (e.code == "requires-recent-login") {
            final res = await _reauthenticateAndDelete(user.email, password);
            return res;
          } else {
            return NetworkResponse.failure(e.code);
          }
        } catch (e) {
          rethrow;
        }
      },
    );
  }

  Future<NetworkResponse<void>> _reauthenticateAndDelete(String email, String password) async {
    final providerData = _auth.currentUser?.providerData.first;

    try {
      if (AppleAuthProvider().providerId == providerData!.providerId) {
        await _auth.currentUser!.reauthenticateWithProvider(AppleAuthProvider());
      } else if (GoogleAuthProvider().providerId == providerData.providerId) {
        await _auth.currentUser!.reauthenticateWithProvider(GoogleAuthProvider());
      } else {
        await _auth.currentUser!
            .reauthenticateWithCredential(EmailAuthProvider.credential(email: email, password: password));
      }

      await _auth.currentUser?.delete();
      _authState.value = const AppAuthState.unAuthenticated();
      return NetworkResponse.success(null);
    } on FirebaseAuthException catch (e) {
      return NetworkResponse.failure(e.code);
    } catch (e) {
      return NetworkResponse.failure(e.toString());
    }
  }
}

/// Returns the sha256 hash of [input] in hex notation.
String sha256ofString(String input) {
  final bytes = utf8.encode(input);
  final digest = sha256.convert(bytes);
  return digest.toString();
}

extension FbExtension on authh.User {
  bool get isSocialLogin => providerData.any((element) => element.providerId != EmailAuthProvider.PROVIDER_ID);
}
