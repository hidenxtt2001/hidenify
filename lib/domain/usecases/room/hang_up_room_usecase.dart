import 'package:injectable/injectable.dart';
import 'package:streaming_app/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:streaming_app/core/usecase.dart';
import 'package:streaming_app/domain/entities/room_entity.dart';
import 'package:streaming_app/domain/repositories/room_repository.dart';

@lazySingleton
class HangUpRoomUsecase implements Usecase<RoomEntity, String> {
  final RoomRepository _roomRepository;

  HangUpRoomUsecase(this._roomRepository);
  @override
  Future<Either<Failure, RoomEntity>> call(String params) {
    return _roomRepository.hangUpRoom(params);
  }
}
