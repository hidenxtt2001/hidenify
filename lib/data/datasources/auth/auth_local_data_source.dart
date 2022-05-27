import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:streaming_app/data/models/user_model.dart';

abstract class AuthLocalDataSource {
  Future<UserModel> getLastUser();
}

@Singleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  @override
  Future<UserModel> getLastUser() async {
    await FirebaseAuth.instance.currentUser?.reload();
    return UserModel.fromUserFirebase(FirebaseAuth.instance.currentUser);
  }
}
