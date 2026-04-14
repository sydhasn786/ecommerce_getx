import 'package:flutter/material.dart';
import 'package:getx/common/style/shadow.dart';
import 'package:getx/common/widgets/custom_shapes/rounded_container.dart';
import 'package:getx/common/widgets/icons/circular_icon.dart';
import 'package:getx/common/widgets/images/rounded_images.dart';
import 'package:getx/common/widgets/texts/brand_title_text.dart';
import 'package:getx/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:getx/common/widgets/texts/product_price.dart';
import 'package:getx/common/widgets/texts/product_title_text.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/enums.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class UProductCardVertical extends StatelessWidget {
  const UProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UIHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: UShadow.verticalProductShadow,
          color: dark ? UColors.darkerGrey : UColors.white,
          borderRadius: BorderRadius.circular(USizes.productImageRadius),
        ),
        child: Column(
          children: [
            // upperportion img, off and heart icon
            URoundedContainer(
              width: 180,
              padding: const EdgeInsets.all(USizes.sm),
              backgroundColor: dark ? UColors.dark : UColors.light,
              child: Stack(
                children: [
                  // thumbnail
                  URoundedImage(imageUrl: UImages.productImage1),
                  // discount tag
                  Positioned(
                    top: 12.0,
                    child: URoundedContainer(
                      radius: USizes.sm,
                      backgroundColor: UColors.yellow.withValues(alpha: 0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: USizes.sm,
                        vertical: USizes.xs,
                      ),
                      child: Text(
                        '20%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: UColors.black),
                      ),
                    ),
                  ),

                  // favourite icon button
                  Positioned(
                    right: 0,
                    top: 0,
                    child: UCircularIcon(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Iconsax.heart5, color: Colors.red),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // lower portion with title, price brand
            SizedBox(height: USizes.spaceBtwItems / 2),
            //Details
            Padding(
              padding: const EdgeInsets.only(left: USizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UProductTitleText(
                    title: 'Blue Bata Shoes',
                    smallSize: false,
                    textAlign: TextAlign.start,
                  ),

                  SizedBox(height: USizes.spaceBtwItems / 2),
                  UBrandTitleWithVerifyIcon(title: "Bata", size: USizes.iconXs),

                  // product price and add button
                ],
              ),
            ),

            Spacer(),
            //SizedBox(height: USizes.spaceBtwItems),
            // product detail
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // price
                Padding(
                  padding: const EdgeInsets.only(left: USizes.sm),
                  child: UProductPriceText(
                    price: '50',
                    currentSign: '\$',
                    isLarge: true,
                    lineThrough: true,
                  ),
                ),

                // Add button
                Container(
                  width: USizes.iconLg,
                  height: USizes.iconLg,
                  decoration: BoxDecoration(
                    color: UColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(USizes.cardRadiusMd),
                      bottomRight: Radius.circular(USizes.productImageRadius),
                    ),
                  ),
                  child: Icon(Iconsax.add, color: UColors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
