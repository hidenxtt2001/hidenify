import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:streaming_app/domain/entities/user_entity.dart';

import '../../core/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> login();
  Future<Either<Failure, void>> logout();
  Future<Either<Failure, UserEntity>> getExistUser();
}
