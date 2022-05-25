// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../presentation/blocs/app/app_bloc.dart' as _i3;
import '../presentation/blocs/auth/auth_bloc.dart' as _i4;
import '../presentation/blocs/home/home_bloc.dart' as _i5;
import '../presentation/blocs/login/login_bloc.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AppBloc>(() => _i3.AppBloc());
  gh.singleton<_i4.AuthBloc>(_i4.AuthBloc());
  gh.factory<_i5.HomeBloc>(() => _i5.HomeBloc());
  gh.factory<_i6.LoginBloc>(() => _i6.LoginBloc(get<_i4.AuthBloc>()));
  return get;
}
