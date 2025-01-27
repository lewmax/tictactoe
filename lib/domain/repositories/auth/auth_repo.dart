import 'dart:io';

import 'package:rxdart/rxdart.dart';
import 'package:chat_app/data/remote/network_response.dart';
import 'package:chat_app/domain/entities/auth/app_auth_state.dart';
import 'package:chat_app/domain/entities/user/user.dart';

abstract class AuthRepo {
  ValueStream<AppAuthState> get authState;

  User? get user;

  Future<NetworkResponse> updateUser(User newUser, {File? Function()? newImage});

  Future<NetworkResponse<bool>> signWithGoogle();

  Future<NetworkResponse<bool>> signWithApple();

  Future<NetworkResponse<void>> signUpWithEmail({
    required String email,
    required String phone,
    required String password,
    required String name,
    required File? image,
  });

  Future<NetworkResponse<void>> signInWithEmail({required String email, required String password});

  Future<NetworkResponse<void>> restorePassword({required String email});

  Future<NetworkResponse<void>> signOut();

  Future<NetworkResponse<void>> deleteUserAccount(String password);
}
