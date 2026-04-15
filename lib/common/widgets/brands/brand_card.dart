import 'package:flutter/material.dart';
import 'package:getx/common/widgets/custom_shapes/rounded_container.dart';
import 'package:getx/common/widgets/images/rounded_images.dart';
import 'package:getx/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';

class UBrandCard extends StatelessWidget {
  const UBrandCard({
    super.key,
    this.showBorder = true,
  });

  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return URoundedContainer(
      width: USizes.brandCardWidth,
      height: USizes.brandCardHeight,
      showBorder: showBorder,
      padding: EdgeInsets.all(USizes.sm),
      backgroundColor: Colors.transparent,
      child: Row(
        children: [
          // brand image
          URoundedImage(imageUrl: UImages.bataLogo, backgroundColor: Colors.transparent),
    
          SizedBox(width: USizes.spaceBtwItems / 2),
    
          // brand name and verify icon
          // right portion
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                UBrandTitleWithVerifyIcon(
                  title: "Bata",
                  textColor: UColors.primary,
                  size: USizes.iconXs,
                ),
                Text(
                  '172 products',
                  style: Theme.of(context).textTheme.labelMedium,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
