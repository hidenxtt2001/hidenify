import 'package:equatable/equatable.dart';

abstract class Status<T> extends Equatable {
  final T? data;

  const Status(this.data);
  @override
  List<Object?> get props => [T];
}

class Success<T> extends Status<T> {
  const Success([T? data]) : super(data);
}

class Error<T> extends Status<T> {
  const Error([T? data]) : super(data);
}

class Loading<T> extends Status<T> {
  const Loading([T? data]) : super(data);
}

class Idle extends Status {
  const Idle() : super(null);
}
