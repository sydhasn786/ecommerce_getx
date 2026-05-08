import 'package:flutter/material.dart';
import 'package:getx/common/widgets/button/elevated_button.dart';
import 'package:getx/common/widgets/texts/product_title_text.dart';
import 'package:getx/common/widgets/texts/section_heading.dart';
import 'package:getx/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:getx/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:getx/features/shop/screens/product_details/widgets/product_thumbnail_and_slider.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

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
            UProductMetaData(),

            // Attributes
            UProductAttributes(),
            SizedBox(height: USizes.spaceBtwSections),

            /// stock and brands checkout button descriptions
            UElevatedButton(onPressed: () {}, child: Text('Checkout')),
            SizedBox(height: USizes.spaceBtwSections),
            // Description
            USectionHeading(title: 'Description', showActionButton: false),
            SizedBox(height: USizes.spaceBtwItems),

            ReadMoreText(
              'data: This is a sample product description. You can add more details about the product here.',
              trimMode: TrimMode.Line,
              trimLines: 2,
              trimExpandedText: 'Less',
              trimCollapsedText: 'Show more',
            ),

            SizedBox(height: USizes.spaceBtwSections),
          ],
        ),
      ),
      ///// buttom navigation
    );
  }
}
