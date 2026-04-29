import 'package:flutter/material.dart';
import 'package:getx/common/widgets/images/rounded_images.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/images.dart';
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
        Stack(
          children: [

            //[thumbnail]
          SizedBox(
            height: 400,
            child: Padding(
              padding: EdgeInsets.all(USizes.productImageRadius * 2),
              child: Image(image: AssetImage(UImages.productImage2)),
            ),
          ),

          /// Image Slider
          /// 
          URoundedImage(
            width: 80,
            backgroundColor: dark ? UColors.dark : UColors.white,
            padding: EdgeInsets.all(USizes.sm),
            border
            imageUrl: UImages.productImage2)
          ]
        )

        /// ---------- product details ----------
        /// price and title
        /// stock and brands checkout button descriptions
       ], 
      )
      ),
      ///// buttom navigation
    );
  }
}
