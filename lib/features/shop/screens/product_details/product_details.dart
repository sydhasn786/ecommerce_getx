import 'package:flutter/material.dart';
import 'package:getx/common/style/padding.dart';
import 'package:getx/common/widgets/custom_shapes/rounded_container.dart';
import 'package:getx/features/shop/screens/product_details/widgets/product_thumbnail_and_slider.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/helpers/helper_functions.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UIHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ---------- product images carousel ----------
            UProductThumbnailAndSlider(),

            /// ---------- product details ----------
            /// price and title
            Padding(
              padding: UPadding.screenPadding,
              child: Column(
                children: [
                  Row(
                    children: [
                      URoundedContainer(
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
                    ],
                  ),
                ],
              ),
            ),

            /// stock and brands checkout button descriptions
          ],
        ),
      ),
      ///// buttom navigation
    );
  }
}
