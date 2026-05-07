import 'package:flutter/material.dart';
import 'package:getx/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:getx/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:getx/features/shop/screens/product_details/widgets/product_thumbnail_and_slider.dart';
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
            UProductMetaData(),

            // Attributes
            UProductAttributes(),

            /// stock and brands checkout button descriptions
          ],
        ),
      ),
      ///// buttom navigation
    );
  }
}

