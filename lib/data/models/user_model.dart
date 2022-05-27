import 'package:firebase_auth/firebase_auth.dart';
import 'package:streaming_app/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(String? displayName, String? photoUrl, String uid)
      : super(displayName, photoUrl, uid);
  factory UserModel.fromUserFirebase(User? user) =>
      UserModel(user?.displayName, user?.photoURL, user!.uid);
}
