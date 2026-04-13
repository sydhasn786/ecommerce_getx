import 'package:flutter/material.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/sizes.dart';

class URoundedContainer extends StatelessWidget {
  const URoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = USizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.borderColor = UColors.borderPrimary,
    this.backgroundColor = UColors.white,
    this.margin,
    this.padding,
  });

  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor, backgroundColor;
  final EdgeInsetsGeometry? margin, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
