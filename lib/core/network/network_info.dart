import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  @lazySingleton
  InternetConnectionChecker get _connectionChecker =>
      InternetConnectionChecker();

  Future<bool> get isConnected;
}

@Singleton(as: NetworkInfo)
class NetworkInfoImpl extends NetworkInfo {
  @override
  Future<bool> get isConnected => _connectionChecker.hasConnection;
}
