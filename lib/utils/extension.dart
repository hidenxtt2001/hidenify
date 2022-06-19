import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

extension Iterables<E> on Iterable<E> {
  Map<K, List<E>> groupBy<K>(K Function(E) keyFunction) => fold(
      <K, List<E>>{},
      (Map<K, List<E>> map, E element) =>
          map..putIfAbsent(keyFunction(element), () => <E>[]).add(element));
}

extension StringExt on String {
  SvgPicture getIcon({double? width, double? height, Color? color}) =>
      SvgPicture.asset(
        "assets/icons/ic_$this.svg",
        color: color,
        width: width,
        height: height,
      );
}

extension MaterialColorHelper on Color {
  MaterialColor convertToMaterialColor() {
    Map<int, Color> color = {
      50: withOpacity(0.1),
      100: withOpacity(0.2),
      200: withOpacity(0.3),
      300: withOpacity(0.4),
      400: withOpacity(0.5),
      500: withOpacity(0.6),
      600: withOpacity(0.7),
      700: withOpacity(0.8),
      800: withOpacity(0.9),
      900: withOpacity(1),
    };
    return MaterialColor(value, color);
  }
}
