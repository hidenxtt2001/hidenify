import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:streaming_app/data/constants/firestore_path.dart';
import 'package:streaming_app/data/models/user_model.dart';

import '../../../core/failure.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login();
  Future<void> logout();
}

@Singleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  late GoogleSignIn _googleSignIn;
  late CollectionReference _usersCollection;
  AuthRemoteDataSourceImpl() {
    _googleSignIn = GoogleSignIn(
        scopes: ["email", 'https://www.googleapis.com/auth/contacts.readonly']);
    _usersCollection =
        FirebaseFirestore.instance.collection(FirestorePath.users);
  }

  @override
  Future<UserModel> login() async {
    final account = await _googleSignIn.signIn();
    if (account == null) throw const FirebaseFailure();
    final googleAuth = await account.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    if (userCredential.user == null) throw const FirebaseFailure();
    final user = UserModel.fromUserFirebase(userCredential.user);
    // Check Exist User
    final findUser = (await _usersCollection.doc(user.uid).get()).data();
    if (findUser != null) {
      return UserModel.fromJson(findUser as Map<String, dynamic>);
    } else {
      await _usersCollection
          .doc(user.uid)
          .set(user.toJson(), SetOptions(merge: true));
    }
    return user;
  }

  @override
  Future<void> logout() async {
    await _googleSignIn.signOut();
    await _googleSignIn.disconnect();
    await FirebaseAuth.instance.signOut();
  }
}
