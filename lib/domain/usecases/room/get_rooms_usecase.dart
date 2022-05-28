import 'package:injectable/injectable.dart';
import 'package:streaming_app/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:streaming_app/core/usecase.dart';
import 'package:streaming_app/data/datasources/room/room_remote_data_source.dart';
import 'package:streaming_app/domain/entities/room_entity.dart';
import 'package:streaming_app/domain/repositories/room_repository.dart';

@lazySingleton
class GetRoomsUsecase implements Usecase<List<RoomEntity>, NoParams> {
  final RoomRepository _roomRepository;

  GetRoomsUsecase(this._roomRepository);
  @override
  Future<Either<Failure, List<RoomEntity>>> call(NoParams params) {
    return _roomRepository.getRooms();
  }
}
