import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  const PrimaryButton({Key? key, required this.title, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.sp),
      child: SizedBox(
        height: 64.h,
        child: TextButton(
          style: TextButton.styleFrom(
            splashFactory: InkRipple.splashFactory,
            elevation: 0,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            shadowColor: Colors.transparent,
            shape: const RoundedRectangleBorder(),
            primary: Theme.of(context).colorScheme.primary,
            textStyle: Theme.of(context).textTheme.titleSmall,
          ),
          onPressed: onPressed,
          child: Center(
            child: Text(
              title,
            ),
          ),
        ),
      ),
    );
  }
}
