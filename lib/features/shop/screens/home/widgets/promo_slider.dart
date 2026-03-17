import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getx/common/widgets/images/rounded_images.dart';
import 'package:getx/features/shop/controllers/home/home_controller.dart';
import 'package:getx/features/shop/screens/home/widgets/banners_dot_navigation.dart';

import 'package:getx/utils/constants/sizes.dart';

class UPromoSlider extends StatelessWidget {
  const UPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map((banner) => URoundedImage(imageUrl: banner))
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1.0,
            onPageChanged: (index, reason) => controller.onPageChanged(index),
            
            // height: 150,
            // autoPlay: true,
            // enlargeCenterPage: true,
          ),
          carouselController: controller.carouselController,
        ),
        //banners dot navigation
        SizedBox(height: USizes.spaceBtwItems),
        BannersDotNavigation(),
      ],
    );
  }
}
