import 'package:flutter/cupertino.dart';

extension SpaceWidgets on num {
  SizedBox get verticalSpace => SizedBox(
        height: toDouble(),
      );
  SizedBox get horizontalSpace => SizedBox(
        width: toDouble(),
      );
}
