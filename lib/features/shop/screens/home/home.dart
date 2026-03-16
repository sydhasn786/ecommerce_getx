import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getx/common/widgets/appbar/appbar.dart';
import 'package:getx/common/widgets/custom_shapes/circular_container.dart';
import 'package:getx/common/widgets/images/rounded_images.dart';
import 'package:getx/common/widgets/products/cart/cartcounter_icon.dart';
import 'package:getx/common/widgets/textfields/search_bar.dart';
import 'package:getx/features/shop/screens/home/widgets/home_categories.dart';
import 'package:getx/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/constants/texts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: UAppBar(),
      body: Column(
        children: [
          //upper part
          Stack(
            children: [
              SizedBox(height: USizes.homePrimaryHeaderHeight + 1),

              UPrimaryHeaderContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ctrl + alt + L to format code
                    UHomeAppBar(),

                    SizedBox(height: USizes.spaceBtwSections),
                    // home categories
                    UHomeCategories(),
                  ],
                ),
              ),

              //USearchBar()
              USearchBar(),
            ],
          ),
          // lower part
          //banners
          Padding(
            padding: const EdgeInsets.all(USizes.defaultSpace),
            child: UPromoSlider(),
          ),
        ],
      ),
    );
  }
}




