import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

@Singleton(as: NetworkInfo)
class NetworkInfoImpl extends NetworkInfo {
  @lazySingleton
  InternetConnectionChecker get _connectionChecker =>
      InternetConnectionChecker();
  @override
  Future<bool> get isConnected => _connectionChecker.hasConnection;
}
