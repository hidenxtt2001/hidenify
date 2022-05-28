import 'package:streaming_app/data/models/room_answer_model.dart';
import 'package:streaming_app/data/models/user_model.dart';
import 'package:streaming_app/domain/entities/room_answer_entity.dart';
import 'package:streaming_app/domain/entities/room_entity.dart';
import 'package:streaming_app/domain/entities/user_entity.dart';

class RoomModel extends RoomEntity {
  const RoomModel(UserModel user, String idRoom, RoomOfferModel answer)
      : super(user, idRoom, answer);
  factory RoomModel.fromJson(Map<String, dynamic> json) => RoomModel(
        UserModel.fromJson(json['user']),
        json['idRoom'],
        RoomOfferModel.fromJson(json['answer']),
      );
  Map<String, dynamic> toJson() => {
        'user': (user as UserModel).toJson(),
        'idRoom': idRoom,
        'answer': (answer as RoomOfferModel).toJson(),
      };
}
