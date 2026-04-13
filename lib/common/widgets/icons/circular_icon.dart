import 'package:flutter/material.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/helpers/helper_functions.dart';
class UCircularIcon extends StatelessWidget {
  const UCircularIcon({
    super.key,
    this.width,
    this.height,
    this.backgroundColor,
    this.child,
  });

  final double? width, height;
  final Color? backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final dark = UIHelperFunctions.isDarkMode(context);

    return Container(
      width: width ?? 40,
      height: height ?? 40,
      decoration: BoxDecoration(
        color: backgroundColor ??
            (dark
                ? UColors.dark.withValues(alpha: 0.9)
                : UColors.light.withValues(alpha: 0.9)),
        borderRadius: BorderRadius.circular(100),
      ),
      child: child, // ✅ USE CHILD HERE
    );
  }
}