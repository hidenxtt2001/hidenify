import 'package:equatable/equatable.dart';

class RoomOfferEntity extends Equatable {
  final String sdp;
  final String type;

  const RoomOfferEntity(this.sdp, this.type);
  @override
  List<Object?> get props => [sdp, type];
}
