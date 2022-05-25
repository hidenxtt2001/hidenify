import 'package:injectable/injectable.dart';
import 'package:streaming_app/injection/dependency_injection.dart';

class AppConfig {
  static const String appName = '[Hidenify]';
  static Future<void> inititalizeApp() async {
    configureDependencies();
  }
}
