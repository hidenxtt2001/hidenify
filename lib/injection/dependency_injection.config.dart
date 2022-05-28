// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/network/network_info.dart' as _i7;
import '../data/datasources/auth/auth_local_data_source.dart' as _i4;
import '../data/datasources/auth/auth_remote_data_source.dart' as _i5;
import '../data/datasources/room/room_remote_data_source.dart' as _i8;
import '../data/repositories/auth_repository_impl.dart' as _i12;
import '../data/repositories/room_repository_impl.dart' as _i10;
import '../domain/repositories/auth_repository.dart' as _i11;
import '../domain/repositories/room_repository.dart' as _i9;
import '../domain/usecases/auth/get_exist_user_usecase.dart' as _i14;
import '../domain/usecases/auth/login_usecase.dart' as _i17;
import '../domain/usecases/auth/logout_usecase.dart' as _i18;
import '../domain/usecases/room/create_room_usecase.dart' as _i13;
import '../domain/usecases/room/get_rooms_usecase.dart' as _i15;
import '../domain/usecases/room/hang_up_room_usecase.dart' as _i16;
import '../presentation/blocs/app/app_bloc.dart' as _i3;
import '../presentation/blocs/auth/auth_bloc.dart' as _i19;
import '../presentation/blocs/home/home_bloc.dart' as _i6;
import '../presentation/blocs/login/login_bloc.dart'
    as _i20; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AppBloc>(() => _i3.AppBloc());
  gh.singleton<_i4.AuthLocalDataSource>(_i4.AuthLocalDataSourceImpl());
  gh.singleton<_i5.AuthRemoteDataSource>(_i5.AuthRemoteDataSourceImpl());
  gh.factory<_i6.HomeBloc>(() => _i6.HomeBloc());
  gh.singleton<_i7.NetworkInfo>(_i7.NetworkInfoImpl());
  gh.lazySingleton<_i8.RoomRemoteDataSource>(
      () => _i8.RoomRemoteDataSourceImpl());
  gh.lazySingleton<_i9.RoomRepository>(
      () => _i10.RoomRepositoryImpl(get<_i8.RoomRemoteDataSource>()));
  gh.lazySingleton<_i11.AuthRepository>(() => _i12.AuthRepositoryImpl(
      get<_i4.AuthLocalDataSource>(),
      get<_i5.AuthRemoteDataSource>(),
      get<_i7.NetworkInfo>()));
  gh.lazySingleton<_i13.CreateRoomUsecase>(
      () => _i13.CreateRoomUsecase(get<_i9.RoomRepository>()));
  gh.lazySingleton<_i14.GetExistUserUsecase>(
      () => _i14.GetExistUserUsecase(get<_i11.AuthRepository>()));
  gh.lazySingleton<_i15.GetRoomsUsecase>(
      () => _i15.GetRoomsUsecase(get<_i9.RoomRepository>()));
  gh.lazySingleton<_i16.HangUpRoomUsecase>(
      () => _i16.HangUpRoomUsecase(get<_i9.RoomRepository>()));
  gh.lazySingleton<_i17.LoginUsecase>(
      () => _i17.LoginUsecase(get<_i11.AuthRepository>()));
  gh.lazySingleton<_i18.LogoutUsecase>(
      () => _i18.LogoutUsecase(get<_i11.AuthRepository>()));
  gh.factory<_i19.AuthBloc>(() => _i19.AuthBloc(
      get<_i18.LogoutUsecase>(), get<_i14.GetExistUserUsecase>()));
  gh.factory<_i20.LoginBloc>(() => _i20.LoginBloc(get<_i17.LoginUsecase>()));
  return get;
}
