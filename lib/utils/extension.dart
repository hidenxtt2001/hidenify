import 'package:flutter/cupertino.dart';
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
