// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/network/network_info.dart' as _i7;
import '../data/datasources/auth/auth_local_data_source.dart' as _i4;
import '../data/datasources/auth/auth_remote_data_source.dart' as _i5;
import '../data/repositories/auth_repository_impl.dart' as _i9;
import '../domain/repositories/auth_repository.dart' as _i8;
import '../domain/usecases/auth/get_exist_user_usecase.dart' as _i10;
import '../domain/usecases/auth/login_usecase.dart' as _i11;
import '../domain/usecases/auth/logout_usecase.dart' as _i12;
import '../presentation/blocs/app/app_bloc.dart' as _i3;
import '../presentation/blocs/auth/auth_bloc.dart' as _i13;
import '../presentation/blocs/dashboard/dashboard_cubit.dart' as _i6;
import '../presentation/blocs/login/login_bloc.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AppBloc>(() => _i3.AppBloc());
  gh.singleton<_i4.AuthLocalDataSource>(_i4.AuthLocalDataSourceImpl());
  gh.singleton<_i5.AuthRemoteDataSource>(_i5.AuthRemoteDataSourceImpl());
  gh.factory<_i6.DashboardCubit>(() => _i6.DashboardCubit());
  gh.singleton<_i7.NetworkInfo>(_i7.NetworkInfoImpl());
  gh.lazySingleton<_i8.AuthRepository>(() => _i9.AuthRepositoryImpl(
      get<_i4.AuthLocalDataSource>(),
      get<_i5.AuthRemoteDataSource>(),
      get<_i7.NetworkInfo>()));
  gh.lazySingleton<_i10.GetExistUserUsecase>(
      () => _i10.GetExistUserUsecase(get<_i8.AuthRepository>()));
  gh.lazySingleton<_i11.LoginUsecase>(
      () => _i11.LoginUsecase(get<_i8.AuthRepository>()));
  gh.lazySingleton<_i12.LogoutUsecase>(
      () => _i12.LogoutUsecase(get<_i8.AuthRepository>()));
  gh.factory<_i13.AuthBloc>(() => _i13.AuthBloc(
      get<_i12.LogoutUsecase>(), get<_i10.GetExistUserUsecase>()));
  gh.factory<_i14.LoginBloc>(() => _i14.LoginBloc(get<_i11.LoginUsecase>()));
  return get;
}
