// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_functions/cloud_functions.dart' as _i809;
import 'package:firebase_core/firebase_core.dart' as _i982;
import 'package:firebase_messaging/firebase_messaging.dart' as _i892;
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i627;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../data/datasources/game/game_data_source.dart' as _i215;
import '../../data/datasources/user/user_data_source.dart' as _i488;
import '../../data/repositories/app/app_config_repo_impl.dart' as _i203;
import '../../data/repositories/app/device_uuid_repo_impl.dart' as _i194;
import '../../data/repositories/app/remote_config_repo_impl.dart' as _i784;
import '../../data/repositories/auth/auth_repo_impl.dart' as _i909;
import '../../data/repositories/date/date_manager_repo_impl.dart' as _i5;
import '../../data/repositories/force_update/force_update_repo_impl.dart' as _i529;
import '../../data/repositories/game/game_repo_impl.dart' as _i381;
import '../../data/repositories/game/recent_game_users_repo_impl.dart' as _i1069;
import '../../data/repositories/leaderboard/leaderboard_repo_impl.dart' as _i921;
import '../../data/repositories/lifecycle/lifecycle_repo_impl.dart' as _i340;
import '../../data/repositories/referal/referal_repository_impl.dart' as _i520;
import '../../data/repositories/screen_activity/screen_activity_repo_impl.dart' as _i968;
import '../../domain/entities/game/game.dart' as _i719;
import '../../domain/repositories/app/app_config_repo.dart' as _i665;
import '../../domain/repositories/app/device_uuid_repository.dart' as _i1006;
import '../../domain/repositories/app/remote_config_repo.dart' as _i222;
import '../../domain/repositories/auth/auth_repo.dart' as _i628;
import '../../domain/repositories/date/date_manager_repo.dart' as _i906;
import '../../domain/repositories/force_update/force_update_repo.dart' as _i893;
import '../../domain/repositories/game/game_repo.dart' as _i878;
import '../../domain/repositories/game/recent_game_users_repo.dart' as _i723;
import '../../domain/repositories/leaderboard_repo.dart' as _i576;
import '../../domain/repositories/lifecycle/lifecycle_repo.dart' as _i663;
import '../../domain/repositories/referal/referal_repository.dart' as _i1067;
import '../../domain/repositories/screen_activity/screen_activity_repo.dart' as _i675;
import '../../domain/services/ai_game_service.dart' as _i1000;
import '../../presentation/features/auth/reset_password/bloc/reset_password_bloc.dart' as _i920;
import '../../presentation/features/auth/sign/cubit/sign_cubit.dart' as _i604;
import '../../presentation/features/auth/sign_in_email/bloc/sing_in_email_bloc.dart' as _i304;
import '../../presentation/features/auth/sign_up/bloc/sign_up_bloc.dart' as _i981;
import '../../presentation/features/game/ai/bloc/ai_game_bloc.dart' as _i640;
import '../../presentation/features/game/offline/bloc/offline_game_bloc.dart' as _i99;
import '../../presentation/features/game/online/bloc/game_bloc.dart' as _i984;
import '../../presentation/features/home/bloc/home_bloc.dart' as _i635;
import '../../presentation/features/leaderboard/bloc/leaderboard_bloc.dart' as _i972;
import '../../presentation/features/profile/bloc/profile_bloc.dart' as _i930;
import '../../presentation/features/profile/delete_account/bloc/delete_account_bloc.dart' as _i548;
import 'modules/firebase_module.dart' as _i398;
import 'modules/storage_module.dart' as _i148;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $configure(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final firebaseModule = _$FirebaseModule();
  final appStorageModule = _$AppStorageModule();
  gh.factory<_i627.FirebaseRemoteConfig>(() => firebaseModule.firebaseRemoteConfig());
  await gh.singletonAsync<_i460.SharedPreferences>(
    () => appStorageModule.sharedPreferences,
    preResolve: true,
  );
  await gh.singletonAsync<_i982.FirebaseApp>(
    () => firebaseModule.firebaseApp(),
    preResolve: true,
  );
  gh.singleton<_i215.GameDataSource>(() => _i215.GameDataSource());
  gh.lazySingleton<_i892.FirebaseMessaging>(() => firebaseModule.firebaseMessaging());
  gh.lazySingleton<_i809.FirebaseFunctions>(() => firebaseModule.firebaseFunctions());
  gh.lazySingleton<_i488.UserDataSource>(() => _i488.UserDataSource());
  gh.lazySingleton<_i665.AppConfigRepo>(() => _i203.AppConfigRepoImpl());
  gh.lazySingleton<_i1006.DeviceUuidRepository>(() => _i194.DeviceUuidRepoImpl(gh<_i460.SharedPreferences>()));
  gh.lazySingleton<_i663.LifecycleRepo>(
    () => _i340.LifecycleRepoImpl(),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i1067.ReferalRepo>(() => _i520.ReferalRepoImpl());
  await gh.lazySingletonAsync<_i906.DateManagerRepo>(
    () => _i5.DateManagerRepoImpl.create(),
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i1000.AiGameService>(
    () => _i1000.AiGameServiceImpl.start(),
    preResolve: true,
  );
  gh.lazySingleton<_i675.ScreenActivityRepo>(
    () => _i968.ScreenActivityRepoImpl(),
    dispose: (i) => i.dispose(),
  );
  await gh.lazySingletonAsync<_i222.RemoteConfigRepo>(
    () => _i784.RemoteConfigRepoImpl.create(gh<_i627.FirebaseRemoteConfig>()),
    preResolve: true,
  );
  gh.lazySingleton<_i723.RecentGameUsersRepo>(() => _i1069.RecentGameUsersRepoImpl(gh<_i488.UserDataSource>()));
  await gh.lazySingletonAsync<_i628.AuthRepo>(
    () => _i909.AuthRepoImpl.create(
      gh<_i488.UserDataSource>(),
      gh<_i1006.DeviceUuidRepository>(),
    ),
    preResolve: true,
  );
  gh.lazySingleton<_i878.GameRepo>(() => _i381.GameRepoImpl(
        gameDataSource: gh<_i215.GameDataSource>(),
        authRepo: gh<_i628.AuthRepo>(),
        referalRepository: gh<_i1067.ReferalRepo>(),
        recentGameUsersRepo: gh<_i723.RecentGameUsersRepo>(),
      ));
  gh.factory<_i99.OfflineGameBloc>(() => _i99.OfflineGameBloc(gh<_i628.AuthRepo>()));
  gh.factoryParam<_i984.GameBloc, _i719.GameId?, dynamic>((
    _gameId,
    _,
  ) =>
      _i984.GameBloc(
        gh<_i878.GameRepo>(),
        gh<_i628.AuthRepo>(),
        _gameId,
      ));
  gh.factory<_i604.SignCubit>(() => _i604.SignCubit(authRepo: gh<_i628.AuthRepo>()));
  gh.lazySingleton<_i893.ForceUpdateRepo>(() => _i529.ForceUpdateRepoImpl(
        gh<_i222.RemoteConfigRepo>(),
        gh<_i665.AppConfigRepo>(),
      ));
  gh.factory<_i920.ResetPasswordBloc>(() => _i920.ResetPasswordBloc(gh<_i628.AuthRepo>()));
  gh.factory<_i304.SingInEmailBloc>(() => _i304.SingInEmailBloc(gh<_i628.AuthRepo>()));
  gh.factory<_i981.SignUpBloc>(() => _i981.SignUpBloc(gh<_i628.AuthRepo>()));
  gh.factory<_i548.DeleteAccountBloc>(() => _i548.DeleteAccountBloc(gh<_i628.AuthRepo>()));
  gh.factory<_i930.ProfileBloc>(() => _i930.ProfileBloc(gh<_i628.AuthRepo>()));
  gh.factory<_i640.AiGameBloc>(() => _i640.AiGameBloc(
        gh<_i1000.AiGameService>(),
        gh<_i628.AuthRepo>(),
      ));
  gh.lazySingleton<_i576.LeaderboardRepo>(() => _i921.LeaderboardRepoImpl(
        gh<_i215.GameDataSource>(),
        gh<_i723.RecentGameUsersRepo>(),
      ));
  gh.factory<_i972.LeaderboardBloc>(() => _i972.LeaderboardBloc(
        leaderboardRepo: gh<_i576.LeaderboardRepo>(),
        dateManagerRepo: gh<_i906.DateManagerRepo>(),
      ));
  gh.factory<_i635.HomeBloc>(() => _i635.HomeBloc(
        authRepo: gh<_i628.AuthRepo>(),
        gameRepo: gh<_i878.GameRepo>(),
        referalRepo: gh<_i1067.ReferalRepo>(),
        remoteConfigRepo: gh<_i222.RemoteConfigRepo>(),
        forceUpdateRepo: gh<_i893.ForceUpdateRepo>(),
        dateManagerRepo: gh<_i906.DateManagerRepo>(),
        leaderboardRepo: gh<_i576.LeaderboardRepo>(),
      ));
  return getIt;
}

class _$FirebaseModule extends _i398.FirebaseModule {}

class _$AppStorageModule extends _i148.AppStorageModule {}
