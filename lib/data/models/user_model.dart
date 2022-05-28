import 'package:firebase_auth/firebase_auth.dart';
import 'package:streaming_app/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel(String? displayName, String? photoUrl, String uid)
      : super(displayName, photoUrl, uid);
  factory UserModel.fromUserFirebase(User? user) =>
      UserModel(user?.displayName, user?.photoURL, user!.uid);
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      UserModel(json['displayName'], json['photoUrl'], json['uid']);

  Map<String, dynamic> toJson() => {
        'displayName': displayName,
        'photoUrl': photoUrl,
        'uid': uid,
      };
}
