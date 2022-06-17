import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_app/app.dart';
import 'package:streaming_app/configs/app_config.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Future.wait([
    AppConfig.inititalizeApp(),
  ]);

  BlocOverrides.runZoned(
    () => runApp(const App()),
  );
}
