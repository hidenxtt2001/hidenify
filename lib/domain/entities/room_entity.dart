import 'package:equatable/equatable.dart';
import 'package:streaming_app/domain/entities/room_answer_entity.dart';
import 'package:streaming_app/domain/entities/user_entity.dart';

class RoomEntity extends Equatable {
  final UserEntity user;
  final String idRoom;
  final RoomOfferEntity? answer;

  const RoomEntity(this.user, this.idRoom, this.answer);
  @override
  List<Object?> get props => [user, idRoom, answer];
}
