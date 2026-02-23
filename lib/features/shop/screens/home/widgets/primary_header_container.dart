import 'package:flutter/material.dart';
import 'package:getx/common/widgets/custom_shapes/circular_container.dart';
import 'package:getx/common/widgets/custom_shapes/rounded_edges_container.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/helpers/device_helpers.dart';

class UPrimaryHeaderContainer extends StatelessWidget {
  const UPrimaryHeaderContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return URoundedEdgesContainer(
      child: Container(
        height: UDeviceHelper.getScreenHeight(context) * 0.4,
        color: UColors.primary,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -160,
              child: UCircularContainer(
                height: USizes.homePrimaryHeaderHeight,
                width: UDeviceHelper.getScreenHeight(context) * 0.4,
                backgroundColor: UColors.white.withValues(alpha: 0.1),
                radius: 500,
              ),
            ),
      
            Positioned(
              top: 50,
              right: -250,
              child: UCircularContainer(
                height: UDeviceHelper.getScreenHeight(context) * 0.4,
                width: UDeviceHelper.getScreenHeight(context) * 0.4,
                backgroundColor: UColors.white.withValues(alpha: 0.1),
                radius: 500,
              ),
            ),
      
            child,
          ],
        ),
      ),
    );
  }
}

