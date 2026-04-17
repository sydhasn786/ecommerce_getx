import 'package:flutter/material.dart';
import 'package:getx/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:getx/common/widgets/images/circular_image.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';

class UProfilePrimaryHeader extends StatelessWidget {
  const UProfilePrimaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
    
        SizedBox(height: USizes.profilePrimaryHeaderHeight + 60),
    
    UPrimaryHeaderContainer(
      child: Container(),
      height: USizes.profilePrimaryHeaderHeight,
    ),
    
    Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Center(
        child: UCircularImage(
          image: UImages.profileLogo,
          height: 120,
          width: 120,
        ),
      ),
    ),
    
    
    
      ]);
  }
}
