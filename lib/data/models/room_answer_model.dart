import 'package:streaming_app/domain/entities/room_answer_entity.dart';

class RoomOfferModel extends RoomOfferEntity {
  const RoomOfferModel(String sdp, String type) : super(sdp, type);
  factory RoomOfferModel.fromJson(Map<String, dynamic> json) =>
      RoomOfferModel(json['sdp'], json['type']);

  Map<String, dynamic> toJson() => {
        'sdp': sdp,
        'type': type,
      };
}
