// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Tic Tac Toe`
  String get home_ticTacToe {
    return Intl.message(
      'Tic Tac Toe',
      name: 'home_ticTacToe',
      desc: '',
      args: [],
    );
  }

  /// `Play Today's Tic Tac Toe`
  String get home_playTodaysTicTacToe {
    return Intl.message(
      'Play Today\'s Tic Tac Toe',
      name: 'home_playTodaysTicTacToe',
      desc: '',
      args: [],
    );
  }

  /// `Have an invite code? Join game`
  String get home_playInviteCode {
    return Intl.message(
      'Have an invite code? Join game',
      name: 'home_playInviteCode',
      desc: '',
      args: [],
    );
  }

  /// `Leaderboard`
  String get home_todaysLeaderboard {
    return Intl.message(
      'Leaderboard',
      name: 'home_todaysLeaderboard',
      desc: '',
      args: [],
    );
  }

  /// `How to Play`
  String get home_howToPlay {
    return Intl.message(
      'How to Play',
      name: 'home_howToPlay',
      desc: '',
      args: [],
    );
  }

  /// `Games In Progress`
  String get home_gamesInProgress {
    return Intl.message(
      'Games In Progress',
      name: 'home_gamesInProgress',
      desc: '',
      args: [],
    );
  }

  /// `Your Recent Games`
  String get home_yourRecentGames {
    return Intl.message(
      'Your Recent Games',
      name: 'home_yourRecentGames',
      desc: '',
      args: [],
    );
  }

  /// `Turn`
  String get home_columnNameTurn {
    return Intl.message(
      'Turn',
      name: 'home_columnNameTurn',
      desc: '',
      args: [],
    );
  }

  /// `Winner`
  String get home_columnNameWinner {
    return Intl.message(
      'Winner',
      name: 'home_columnNameWinner',
      desc: '',
      args: [],
    );
  }

  /// `Players`
  String get home_columnNamePlayers {
    return Intl.message(
      'Players',
      name: 'home_columnNamePlayers',
      desc: '',
      args: [],
    );
  }

  /// `Rejoin Game`
  String get home_columnNameRejoinGame {
    return Intl.message(
      'Rejoin Game',
      name: 'home_columnNameRejoinGame',
      desc: '',
      args: [],
    );
  }

  /// `Rejoin`
  String get home_rejoinBtn {
    return Intl.message(
      'Rejoin',
      name: 'home_rejoinBtn',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get home_columnNameDate {
    return Intl.message(
      'Date',
      name: 'home_columnNameDate',
      desc: '',
      args: [],
    );
  }

  /// `Didn't join yet`
  String get home_didntJoinYet {
    return Intl.message(
      'Didn\'t join yet',
      name: 'home_didntJoinYet',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to today's Tic Tac Toe`
  String get home_join_dialog_title {
    return Intl.message(
      'Welcome to today\'s Tic Tac Toe',
      name: 'home_join_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `Join a game with an Invite Code`
  String get home_join_dialog_text {
    return Intl.message(
      'Join a game with an Invite Code',
      name: 'home_join_dialog_text',
      desc: '',
      args: [],
    );
  }

  /// `Invite Code`
  String get home_join_dialog_hint {
    return Intl.message(
      'Invite Code',
      name: 'home_join_dialog_hint',
      desc: '',
      args: [],
    );
  }

  /// `Play`
  String get home_join_dialog_playBtn {
    return Intl.message(
      'Play',
      name: 'home_join_dialog_playBtn',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an invite code?\nStart new game`
  String get home_join_dialog_dontHaveInviteCode {
    return Intl.message(
      'Don\'t have an invite code?\nStart new game',
      name: 'home_join_dialog_dontHaveInviteCode',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get home_signIn {
    return Intl.message(
      'Sign In',
      name: 'home_signIn',
      desc: '',
      args: [],
    );
  }

  /// `(Incomplete)`
  String get home_game_incomplete {
    return Intl.message(
      '(Incomplete)',
      name: 'home_game_incomplete',
      desc: '',
      args: [],
    );
  }

  /// `Take a photo`
  String get avatar_make_photo {
    return Intl.message(
      'Take a photo',
      name: 'avatar_make_photo',
      desc: '',
      args: [],
    );
  }

  /// `Pick from gallery`
  String get avatar_chose_from_gallery {
    return Intl.message(
      'Pick from gallery',
      name: 'avatar_chose_from_gallery',
      desc: '',
      args: [],
    );
  }

  /// `Gallery access is required`
  String get avatar_error_permission_gallery_title {
    return Intl.message(
      'Gallery access is required',
      name: 'avatar_error_permission_gallery_title',
      desc: '',
      args: [],
    );
  }

  /// `Please grant access to the gallery to pick an image`
  String get avatar_error_permission_gallery_body {
    return Intl.message(
      'Please grant access to the gallery to pick an image',
      name: 'avatar_error_permission_gallery_body',
      desc: '',
      args: [],
    );
  }

  /// `Camera access is required`
  String get avatar_error_permission_camera_title {
    return Intl.message(
      'Camera access is required',
      name: 'avatar_error_permission_camera_title',
      desc: '',
      args: [],
    );
  }

  /// `Please grant access to the camera to take a photo`
  String get avatar_error_permission_camera_body {
    return Intl.message(
      'Please grant access to the camera to take a photo',
      name: 'avatar_error_permission_camera_body',
      desc: '',
      args: [],
    );
  }

  /// `Go to settings`
  String get avatar_go_to_settings {
    return Intl.message(
      'Go to settings',
      name: 'avatar_go_to_settings',
      desc: '',
      args: [],
    );
  }

  /// `Deny`
  String get avatar_deny {
    return Intl.message(
      'Deny',
      name: 'avatar_deny',
      desc: '',
      args: [],
    );
  }

  /// `Allow`
  String get avatar_allow {
    return Intl.message(
      'Allow',
      name: 'avatar_allow',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile_title {
    return Intl.message(
      'Profile',
      name: 'profile_title',
      desc: '',
      args: [],
    );
  }

  /// `Pick Avatar`
  String get profile_pickAvatar {
    return Intl.message(
      'Pick Avatar',
      name: 'profile_pickAvatar',
      desc: '',
      args: [],
    );
  }

  /// `Display Name`
  String get profile_hintLabelName {
    return Intl.message(
      'Display Name',
      name: 'profile_hintLabelName',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get profile_log_out {
    return Intl.message(
      'Log out',
      name: 'profile_log_out',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get profile_saveBtn {
    return Intl.message(
      'Save',
      name: 'profile_saveBtn',
      desc: '',
      args: [],
    );
  }

  /// `No info about user`
  String get profile_noInfo {
    return Intl.message(
      'No info about user',
      name: 'profile_noInfo',
      desc: '',
      args: [],
    );
  }

  /// `Profile successfuly updated!`
  String get profile_successUpdate {
    return Intl.message(
      'Profile successfuly updated!',
      name: 'profile_successUpdate',
      desc: '',
      args: [],
    );
  }

  /// `Remove Avatar`
  String get profile_removeAvatar {
    return Intl.message(
      'Remove Avatar',
      name: 'profile_removeAvatar',
      desc: '',
      args: [],
    );
  }

  /// `Invite`
  String get game_invite {
    return Intl.message(
      'Invite',
      name: 'game_invite',
      desc: '',
      args: [],
    );
  }

  /// `End Game`
  String get game_endGame {
    return Intl.message(
      'End Game',
      name: 'game_endGame',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to today's Tic Tac Toe`
  String get game_invite_dialog_title {
    return Intl.message(
      'Welcome to today\'s Tic Tac Toe',
      name: 'game_invite_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `Invite a Teammate to your game`
  String get game_invite_dialog_subtitle {
    return Intl.message(
      'Invite a Teammate to your game',
      name: 'game_invite_dialog_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Link copied`
  String get game_invite_dialog_linkCopied {
    return Intl.message(
      'Link copied',
      name: 'game_invite_dialog_linkCopied',
      desc: '',
      args: [],
    );
  }

  /// `Invite`
  String get game_invite_dialog_btn {
    return Intl.message(
      'Invite',
      name: 'game_invite_dialog_btn',
      desc: '',
      args: [],
    );
  }

  /// `Let's play!`
  String get game_invite_dialog_link {
    return Intl.message(
      'Let\'s play!',
      name: 'game_invite_dialog_link',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
