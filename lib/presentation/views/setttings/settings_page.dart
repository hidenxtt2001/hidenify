import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static SettingsPage get instance => const SettingsPage();

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final lang = Lang.of(context);
    return Center(
      child: Text(lang.settings),
    );
  }
}
