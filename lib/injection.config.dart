// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;

import 'application/users/user_watcher/user_watcher_bloc.dart' as _i473;
import 'domain/users/i_user_repository.dart' as _i222;
import 'infrastructure/core/injectable_modules.dart' as _i878;
import 'infrastructure/user/user_repository.dart' as _i431;
import 'infrastructure/user/user_service.dart' as _i259;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModuels = _$InjectableModuels();
    gh.lazySingleton<_i519.Client>(() => injectableModuels.client);
    gh.lazySingleton<_i259.UserService>(
        () => _i259.UserService(gh<_i519.Client>()));
    gh.lazySingleton<_i222.IUserRepository>(
        () => _i431.UserRepository(gh<_i259.UserService>()));
    gh.factory<_i473.UserWatcherBloc>(
        () => _i473.UserWatcherBloc(gh<_i222.IUserRepository>()));
    return this;
  }
}

class _$InjectableModuels extends _i878.InjectableModuels {}
