import 'package:flutter/material.dart';
import 'package:streaming_app/presentation/widgets/loading/global_loading.dart';

import '../../../generated/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static HomePage get instance => const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _BodyPage(),
    );
  }
}

class _BodyPage extends StatefulWidget {
  const _BodyPage({Key? key}) : super(key: key);

  @override
  State<_BodyPage> createState() => __BodyPageState();
}

class __BodyPageState extends State<_BodyPage> {
  @override
  Widget build(BuildContext context) {
    final lang = Lang.of(context);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(lang.home),
        ],
      ),
    );
  }
}
