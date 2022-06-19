import 'dart:async';

import 'package:flutter/material.dart';

import '../../../utils/logger.dart';
import 'dismiss_future.dart';
import 'load.dart';
import 'loading.dart';
import 'theme.dart';

List<GlobalKey<_GlobalLoadingState>> _keys = [];

class GlobalLoading extends StatefulWidget {
  final Widget child;

  final LoadingThemeData themeData;

  @override
  final GlobalKey<_GlobalLoadingState> key;

  final LoadingWidgetBuilder loadingWidgetBuilder;

  GlobalLoading({
    required this.child,
    required this.themeData,
    this.loadingWidgetBuilder = LoadingWidget.buildDefaultLoadingWidget,
    Key? key,
  })  : key = createKey(),
        super(key: key);

  @override
  _GlobalLoadingState createState() => _GlobalLoadingState();

  static GlobalKey<_GlobalLoadingState> createKey() {
    return GlobalKey();
  }
}

class _GlobalLoadingState extends State<GlobalLoading> {
  GlobalKey<OverlayState> overlayKey = GlobalKey();

  GlobalKey<LoadingWidgetState> loadingKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _keys.add(widget.key);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Overlay(
        key: overlayKey,
        initialEntries: [
          OverlayEntry(
            builder: (BuildContext context) {
              return widget.child;
            },
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _keys.remove(widget.key);
    super.dispose();
  }

  LoadingDismissFuture showLoading({
    bool? tapDismiss,
  }) {
    tapDismiss ??= true;
    _realDismissDialog();
    var themeData = widget.themeData;
    var w = LoadingTheme(
      data: themeData.copyWith(
        tapDismiss: tapDismiss,
      ),
      child: LoadingWidget(
        key: loadingKey,
        loadingWidgetBuilder: widget.loadingWidgetBuilder,
      ),
    );
    var entry = OverlayEntry(builder: (BuildContext context) {
      return w;
    });

    overlayKey.currentState?.insert(entry);

    var future =
        LoadingDismissFuture(entry, loadingKey, themeData.animDuration);
    return future;
  }

  LoadingDismissFuture showLoadingWidget(
    Widget loadingWidget, {
    bool? tapDismiss,
  }) {
    _realDismissDialog();
    var themeData = widget.themeData;
    tapDismiss ??= themeData.tapDismiss;
    var w = LoadingTheme(
      data: themeData.copyWith(
        tapDismiss: tapDismiss,
      ),
      child: LoadingWidget(
        key: loadingKey,
        loadingWidgetBuilder: (_, __) => loadingWidget,
      ),
    );
    var entry = OverlayEntry(builder: (BuildContext context) {
      return w;
    });

    overlayKey.currentState?.insert(entry);

    var future =
        LoadingDismissFuture(entry, loadingKey, themeData.animDuration);
    return future;
  }

  void _realDismissDialog() {
    FutureManager.getInstance().dismissAll(false);
  }

  void dismissLoading() {
    printLog(this, message: "dismiss loading called.");
    _realDismissDialog();
  }
}

/// Use [LoadingDismissFuture.dismiss] can dismiss current dialog
Future<LoadingDismissFuture?> showLoadingDialog({
  bool? tapDismiss,
}) {
  printLog(GlobalLoading, message: "show loading dialog");
  var c = Completer<LoadingDismissFuture?>();
  Future.delayed(Duration.zero, () {
    if (_keys.isNotEmpty) {
      var key = _keys.first;
      c.complete(key.currentState?.showLoading(tapDismiss: tapDismiss));
    }
  });
  return c.future;
}

Future<LoadingDismissFuture> showCustomLoadingWidget(
  Widget widget, {
  bool? tapDismiss,
}) {
  printLog(GlobalLoading, message: "show custom loading dialog");
  var c = Completer<LoadingDismissFuture>();
  Future.delayed(Duration.zero, () {
    if (_keys.isNotEmpty) {
      var key = _keys.first;
      c.complete(key.currentState?.showLoadingWidget(
        widget,
        tapDismiss: tapDismiss,
      ));
    }
  });
  return c.future;
}

/// will dismiss all dialog
void hideLoadingDialog() {
  printLog(GlobalLoading, message: "dismis loading dialog");
  Future.delayed(Duration.zero, () {
    if (_keys.isNotEmpty) {
      var key = _keys.first;
      key.currentState?.loadingKey.currentState?.dismissAnim();
      key.currentState?.dismissLoading();
    }
  });
}
