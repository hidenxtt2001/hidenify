import 'package:dartz/dartz.dart';
import 'package:streaming_app/core/failure.dart';
import 'package:streaming_app/data/models/user_model.dart';
import 'package:streaming_app/domain/entities/room_answer_entity.dart';
import 'package:streaming_app/domain/entities/room_entity.dart';
import 'package:streaming_app/domain/entities/user_entity.dart';

import '../../data/models/room_answer_model.dart';

abstract class RoomRepository {
  Future<Either<Failure, List<RoomEntity>>> getRooms();
  Future<Either<Failure, RoomEntity>> createRoom(UserEntity user, RoomOfferEntity offer);
  Future<Either<Failure, RoomEntity>> hangUpRoom(String roomId);
}
