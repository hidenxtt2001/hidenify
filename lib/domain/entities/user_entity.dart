import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  late String? displayName;
  late String? photoUrl;
  late String uid;

  UserEntity(this.displayName, this.photoUrl, this.uid);
  @override
  List<Object?> get props => [displayName, photoUrl, uid];
}
