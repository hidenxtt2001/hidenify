import 'package:injectable/injectable.dart';
import 'package:streaming_app/core/network/network_info.dart';
import 'package:streaming_app/data/datasources/auth/auth_local_data_source.dart';
import 'package:streaming_app/data/datasources/auth/auth_remote_data_source.dart';
import 'package:streaming_app/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:streaming_app/domain/repositories/auth_repository.dart';
import '../../core/failure.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource _authLocalDataSource;
  final AuthRemoteDataSource _authRemoteDataSource;
  final NetworkInfo _networkInfo;
  AuthRepositoryImpl(
      this._authLocalDataSource, this._authRemoteDataSource, this._networkInfo);
  @override
  Future<Either<Failure, UserEntity>> login() async {
    try {
      if (await _networkInfo.isConnected) {
        final user = await _authRemoteDataSource.login();
        return Right(user);
      } else {
        return const Left(NetworkFailure());
      }
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(FirebaseFailure(data: e));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getExistUser() async {
    try {
      if (await _networkInfo.isConnected) {
        final user = await _authLocalDataSource.getLastUser();
        return Right(user);
      } else {
        return const Left(NetworkFailure());
      }
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(FirebaseFailure(data: e));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      return Right(await _authRemoteDataSource.logout());
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(FirebaseFailure(data: e));
    }
  }
}
