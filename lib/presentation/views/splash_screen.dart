import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:streaming_app/configs/app_color.dart';
import 'package:streaming_app/configs/app_config.dart';
import 'package:streaming_app/configs/text_config.dart';
import 'package:streaming_app/routes/route_url.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        await Future.delayed(const Duration(milliseconds: 1500));
        Navigator.pushNamedAndRemoveUntil(
            context, RouteUrl.main, (route) => false);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Center(
        child: Text(
          "[h]",
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
      ),
    );
  }
}
