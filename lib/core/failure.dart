import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final dynamic data;

  const Failure({this.data});

  @override
  List<Object?> get props => [data];
}

class FirebaseFailure extends Failure {
  const FirebaseFailure({dynamic data}) : super(data: data);
}

class NetworkFailure extends Failure {
  const NetworkFailure({dynamic data}) : super(data: data);
}
