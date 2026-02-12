import 'package:flutter/material.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/helpers/device_helpers.dart';

class UCircularContainer extends StatelessWidget {
  const UCircularContainer({super.key,
    this.height = 400, 
    this.width = 400,
    this.radius = 400, 
    this.backgroundColor = UColors.white,
   this.margin,
   this.padding
   });

  final double height, width, radius;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? margin, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
    );
  }
}
