import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/common/widgets/layout/grid_layout.dart';
import 'package:getx/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:getx/common/widgets/textfields/search_bar.dart';
import 'package:getx/common/widgets/texts/section_heading.dart';
import 'package:getx/features/shop/controllers/home/home_controller.dart';
import 'package:getx/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:getx/features/shop/screens/home/widgets/home_categories.dart';
import 'package:getx/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:getx/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      //appBar: UAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //upper part
            Stack(
              children: [
                SizedBox(height: USizes.homePrimaryHeaderHeight + 10),

                UPrimaryHeaderContainer(
                  height: USizes.homePrimaryHeaderHeight,
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
              child: Column(
                children: [
                  UPromoSlider(
                    banners: [
                      UImages.homeBanner1,
                      UImages.homeBanner2,
                      UImages.homeBanner3,
                      UImages.homeBanner4,
                      UImages.homeBanner5,
                    ],
                  ),

                  USectionHeading(
                    title: 'Popular Products',
                    buttonTitle: 'See All',
                    onPressed: () {},
                  ),

                  const SizedBox(height: USizes.spaceBtwItems),

                  // //Grid view od product cards
                  UGridLayout(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return UProductCardVertical();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
