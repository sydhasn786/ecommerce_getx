import 'package:flutter/material.dart';
import 'package:getx/common/widgets/appbar/appbar.dart';
import 'package:getx/common/widgets/icons/circular_icon.dart';
import 'package:getx/common/widgets/images/rounded_images.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class UProductThumbnailAndSlider extends StatelessWidget {
  const UProductThumbnailAndSlider({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = UIHelperFunctions.isDarkMode(context);
    return Container(
      color: dark ? UColors.darkGrey : UColors.light,
      child: Stack(
        children: [
          //[thumbnail]
          SizedBox(
            height: 400,
            child: Padding(
              padding: EdgeInsets.all(USizes.productImageRadius * 2),
              child: Center(
                child: Image(image: AssetImage(UImages.productImage2)),
              ),
            ),
          ),
    
          /// Image Slider
          ///
          Positioned(
            left: USizes.defaultSpace,
            right: 0,
            bottom: 30,
            child: SizedBox(
              height: 80.0,
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    const SizedBox(width: USizes.spaceBtwItems),
                shrinkWrap: true,
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => URoundedImage(
                  width: 80,
                  backgroundColor: dark ? UColors.dark : UColors.white,
                  padding: EdgeInsets.all(USizes.sm),
                  border: Border.all(color: UColors.primary),
                  imageUrl: UImages.productImage2,
                ),
              ),
            ),
          ),
        // appbar
        UAppBar(
          showBackArrow: true,
          actions: [
          UCircularIcon(icon: Iconsax.heart5, backgroundColor: Colors.red)
          ]
        ),
    
        ],
      ),
    );
  }
}
