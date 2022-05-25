import '../data/constants/constant.dart';

import 'package:logger/logger.dart';

final _logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 100,
    lineLength: 50,
    colors: true,
    printEmojis: true,
    printTime: true,
  ),
);

void printLog(Object parent,
    {required dynamic message, StackTrace? trace, dynamic error}) {
  assert((error != null) || (trace == null && error == null),
      "Error must be provided if an error happened");
  final mes = "[${parent.runtimeType}] $message";
  if (error != null) {
    return _logger.e(
      mes,
      error,
      trace,
    );
  }
  _logger.d(mes);
}
