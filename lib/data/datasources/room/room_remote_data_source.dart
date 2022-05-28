import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:streaming_app/core/failure.dart';
import 'package:streaming_app/data/constants/firestore_path.dart';
import 'package:streaming_app/data/models/room_answer_model.dart';
import 'package:streaming_app/data/models/room_model.dart';
import 'package:streaming_app/data/models/user_model.dart';
import 'package:uuid/uuid.dart';

abstract class RoomRemoteDataSource {
  Future<List<RoomModel>> getRooms();
  Future<RoomModel> createRoom(UserModel user, RoomOfferModel offer);
  Future<RoomModel> hangUpRoom(String roomId);
}

@LazySingleton(as: RoomRemoteDataSource)
class RoomRemoteDataSourceImpl implements RoomRemoteDataSource {
  final config = {
    'iceServers': [
      {"url": "stun:stun.l.google.com:19302"},
    ]
  };

  final sdpConstraints = {
    'mandatory': {
      'OfferToReceiveAudio': true,
      'OfferToReceiveVideo': true,
    },
    'optional': []
  };

  late CollectionReference<RoomModel> roomRef;
  RoomRemoteDataSourceImpl() {
    roomRef = FirebaseFirestore.instance
        .collection(FirestorePath.rooms)
        .withConverter<RoomModel>(
            fromFirestore: (snapshot, options) =>
                RoomModel.fromJson(snapshot.data()!),
            toFirestore: (room, _) => room.toJson());
  }
  @override
  Future<RoomModel> createRoom(UserModel user, RoomOfferModel offer) async {
    final roomId = const Uuid().v4();
    final room = RoomModel(user, roomId, offer);
    await roomRef.doc(roomId).update(room.toJson());
    return room;
  }

  @override
  Future<List<RoomModel>> getRooms() async {
    final rooms = await roomRef.get();
    return rooms.docs.map((e) => e.data()).toList();
  }

  @override
  Future<RoomModel> hangUpRoom(String roomId) async {
    final roomDoc = roomRef.doc(roomId);
    final room = await roomDoc.get();
    await roomDoc.delete();
    return room.data()!;
  }
}
