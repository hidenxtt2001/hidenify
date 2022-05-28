import 'package:injectable/injectable.dart';
import 'package:streaming_app/data/datasources/room/room_remote_data_source.dart';
import 'package:streaming_app/data/models/user_model.dart';
import 'package:streaming_app/domain/entities/room_answer_entity.dart';
import 'package:streaming_app/domain/entities/room_entity.dart';
import 'package:streaming_app/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:streaming_app/domain/entities/user_entity.dart';
import 'package:streaming_app/domain/repositories/room_repository.dart';

import '../models/room_answer_model.dart';

@LazySingleton(as: RoomRepository)
class RoomRepositoryImpl extends RoomRepository {
  final RoomRemoteDataSource _remoteDataSource;

  RoomRepositoryImpl(this._remoteDataSource);
  @override
  Future<Either<Failure, RoomEntity>> createRoom(
      UserEntity user, RoomOfferEntity offer) async {
    try {
      final room = await _remoteDataSource.createRoom(
          user as UserModel, offer as RoomOfferModel);
      return Right(room);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(FirebaseFailure(data: e));
    }
  }

  @override
  Future<Either<Failure, List<RoomEntity>>> getRooms() async {
    try {
      final rooms = await _remoteDataSource.getRooms();
      return Right(rooms);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(FirebaseFailure(data: e));
    }
  }

  @override
  Future<Either<Failure, RoomEntity>> hangUpRoom(String roomId) async {
    try {
      final room = await _remoteDataSource.hangUpRoom(roomId);
      return Right(room);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(FirebaseFailure(data: e));
    }
  }
}
