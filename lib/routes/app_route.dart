import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:streaming_app/presentation/views/home/home_page.dart';
import 'package:streaming_app/presentation/views/login/login_page.dart';
import 'package:streaming_app/presentation/views/splash_screen.dart';
import 'package:streaming_app/presentation/views/dashboard.dart';
import 'package:streaming_app/presentation/views/wapper.dart';
import 'package:streaming_app/routes/route_url.dart';

class AppRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteUrl.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case RouteUrl.main:
        return MaterialPageRoute(
          builder: (context) => const Wapper(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text('Error'),
        ),
      ),
      settings: const RouteSettings(
        name: '/error',
      ),
    );
  }
}
