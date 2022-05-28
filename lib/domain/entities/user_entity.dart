import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? displayName;
  final String? photoUrl;
  final String uid;

  const UserEntity(this.displayName, this.photoUrl, this.uid);
  @override
  List<Object?> get props => [displayName, photoUrl, uid];
}
