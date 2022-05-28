import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:streaming_app/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:streaming_app/core/usecase.dart';
import 'package:streaming_app/domain/entities/room_answer_entity.dart';
import 'package:streaming_app/domain/entities/room_entity.dart';
import 'package:streaming_app/domain/entities/user_entity.dart';
import 'package:streaming_app/domain/repositories/room_repository.dart';

@lazySingleton
class CreateRoomUsecase implements Usecase<RoomEntity, CreateRoomParams> {
  final RoomRepository _roomRepository;

  CreateRoomUsecase(this._roomRepository);
  @override
  Future<Either<Failure, RoomEntity>> call(CreateRoomParams params) async {
    return _roomRepository.createRoom(params.user, params.offer);
  }
}

class CreateRoomParams extends Equatable {
  final UserEntity user;
  final RoomOfferEntity offer;

  const CreateRoomParams(this.user, this.offer);
  @override
  List<Object?> get props => [user, offer];
}
