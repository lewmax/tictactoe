import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 's_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of S
/// returned by `S.of(context)`.
///
/// Applications need to include `S.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/s.dart';
///
/// return MaterialApp(
///   localizationsDelegates: S.localizationsDelegates,
///   supportedLocales: S.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the S.supportedLocales
/// property.
abstract class S {
  S(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static S? of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  static const LocalizationsDelegate<S> delegate = _SDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @home_ticTacToe.
  ///
  /// In en, this message translates to:
  /// **'Tic Tac Toe'**
  String get home_ticTacToe;

  /// No description provided for @home_playTodaysTicTacToe.
  ///
  /// In en, this message translates to:
  /// **'Play Today\'s Tic Tac Toe'**
  String get home_playTodaysTicTacToe;

  /// No description provided for @home_playInviteCode.
  ///
  /// In en, this message translates to:
  /// **'Have an invite code? Join game'**
  String get home_playInviteCode;

  /// No description provided for @home_todaysLeaderboard.
  ///
  /// In en, this message translates to:
  /// **'Leaderboard'**
  String get home_todaysLeaderboard;

  /// No description provided for @home_howToPlay.
  ///
  /// In en, this message translates to:
  /// **'How to Play'**
  String get home_howToPlay;

  /// No description provided for @home_gamesInProgress.
  ///
  /// In en, this message translates to:
  /// **'Games In Progress'**
  String get home_gamesInProgress;

  /// No description provided for @home_yourRecentGames.
  ///
  /// In en, this message translates to:
  /// **'Your Recent Games'**
  String get home_yourRecentGames;

  /// No description provided for @home_columnNameTurn.
  ///
  /// In en, this message translates to:
  /// **'Turn'**
  String get home_columnNameTurn;

  /// No description provided for @home_columnNameWinner.
  ///
  /// In en, this message translates to:
  /// **'Winner'**
  String get home_columnNameWinner;

  /// No description provided for @home_columnNamePlayers.
  ///
  /// In en, this message translates to:
  /// **'Players'**
  String get home_columnNamePlayers;

  /// No description provided for @home_columnNameRejoinGame.
  ///
  /// In en, this message translates to:
  /// **'Rejoin Game'**
  String get home_columnNameRejoinGame;

  /// No description provided for @home_rejoinBtn.
  ///
  /// In en, this message translates to:
  /// **'Rejoin'**
  String get home_rejoinBtn;

  /// No description provided for @home_columnNameDate.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get home_columnNameDate;

  /// No description provided for @home_didntJoinYet.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t join yet'**
  String get home_didntJoinYet;

  /// No description provided for @home_join_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Tic Tac Toe'**
  String get home_join_dialog_title;

  /// No description provided for @home_join_dialog_text.
  ///
  /// In en, this message translates to:
  /// **'Join a game with an Invite Code'**
  String get home_join_dialog_text;

  /// No description provided for @home_join_dialog_hint.
  ///
  /// In en, this message translates to:
  /// **'Invite Code'**
  String get home_join_dialog_hint;

  /// No description provided for @home_join_dialog_playBtn.
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get home_join_dialog_playBtn;

  /// No description provided for @home_join_dialog_dontHaveInviteCode.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an invite code?\nStart new game'**
  String get home_join_dialog_dontHaveInviteCode;

  /// No description provided for @home_signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get home_signIn;

  /// No description provided for @home_game_incomplete.
  ///
  /// In en, this message translates to:
  /// **'(Incomplete)'**
  String get home_game_incomplete;

  /// No description provided for @avatar_make_photo.
  ///
  /// In en, this message translates to:
  /// **'Take a photo'**
  String get avatar_make_photo;

  /// No description provided for @avatar_chose_from_gallery.
  ///
  /// In en, this message translates to:
  /// **'Pick from gallery'**
  String get avatar_chose_from_gallery;

  /// No description provided for @avatar_error_permission_gallery_title.
  ///
  /// In en, this message translates to:
  /// **'Gallery access is required'**
  String get avatar_error_permission_gallery_title;

  /// No description provided for @avatar_error_permission_gallery_body.
  ///
  /// In en, this message translates to:
  /// **'Please grant access to the gallery to pick an image'**
  String get avatar_error_permission_gallery_body;

  /// No description provided for @avatar_error_permission_camera_title.
  ///
  /// In en, this message translates to:
  /// **'Camera access is required'**
  String get avatar_error_permission_camera_title;

  /// No description provided for @avatar_error_permission_camera_body.
  ///
  /// In en, this message translates to:
  /// **'Please grant access to the camera to take a photo'**
  String get avatar_error_permission_camera_body;

  /// No description provided for @avatar_go_to_settings.
  ///
  /// In en, this message translates to:
  /// **'Go to settings'**
  String get avatar_go_to_settings;

  /// No description provided for @avatar_deny.
  ///
  /// In en, this message translates to:
  /// **'Deny'**
  String get avatar_deny;

  /// No description provided for @avatar_allow.
  ///
  /// In en, this message translates to:
  /// **'Allow'**
  String get avatar_allow;

  /// No description provided for @profile_title.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile_title;

  /// No description provided for @profile_pickAvatar.
  ///
  /// In en, this message translates to:
  /// **'Pick Avatar'**
  String get profile_pickAvatar;

  /// No description provided for @profile_hintLabelName.
  ///
  /// In en, this message translates to:
  /// **'Display Name'**
  String get profile_hintLabelName;

  /// No description provided for @profile_log_out.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get profile_log_out;

  /// No description provided for @profile_saveBtn.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get profile_saveBtn;

  /// No description provided for @profile_noInfo.
  ///
  /// In en, this message translates to:
  /// **'No info about user'**
  String get profile_noInfo;

  /// No description provided for @profile_successUpdate.
  ///
  /// In en, this message translates to:
  /// **'Profile successfuly updated!'**
  String get profile_successUpdate;

  /// No description provided for @profile_removeAvatar.
  ///
  /// In en, this message translates to:
  /// **'Remove Avatar'**
  String get profile_removeAvatar;

  /// No description provided for @game_invite.
  ///
  /// In en, this message translates to:
  /// **'Invite'**
  String get game_invite;

  /// No description provided for @game_endGame.
  ///
  /// In en, this message translates to:
  /// **'End Game'**
  String get game_endGame;

  /// No description provided for @game_invite_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Tic Tac Toe'**
  String get game_invite_dialog_title;

  /// No description provided for @game_invite_dialog_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Invite a Teammate to your game'**
  String get game_invite_dialog_subtitle;

  /// No description provided for @game_invite_dialog_linkCopied.
  ///
  /// In en, this message translates to:
  /// **'Link copied'**
  String get game_invite_dialog_linkCopied;

  /// No description provided for @game_invite_dialog_btn.
  ///
  /// In en, this message translates to:
  /// **'Invite'**
  String get game_invite_dialog_btn;

  /// No description provided for @game_invite_dialog_link.
  ///
  /// In en, this message translates to:
  /// **'Let\'s play!'**
  String get game_invite_dialog_link;
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  Future<S> load(Locale locale) {
    return SynchronousFuture<S>(lookupS(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_SDelegate old) => false;
}

S lookupS(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return SEn();
  }

  throw FlutterError(
    'S.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
