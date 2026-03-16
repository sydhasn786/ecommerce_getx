import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getx/common/widgets/images/rounded_images.dart';
import 'package:getx/features/shop/screens/home/home.dart';
import 'package:getx/features/shop/screens/home/widgets/banners_dot_navigation.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';

class UPromoSlider extends StatelessWidget {
  const UPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [
            URoundedImage(imageUrl: UImages.homeBanner1),
            URoundedImage(imageUrl: UImages.homeBanner2),
            URoundedImage(imageUrl: UImages.homeBanner3),
            URoundedImage(imageUrl: UImages.homeBanner4),
            URoundedImage(imageUrl: UImages.homeBanner5),
          ],
          options: CarouselOptions(
            viewportFraction: 1.0,
            // height: 150,
            // autoPlay: true,
            // enlargeCenterPage: true,
          ),
        ),
        //banners dot navigation
        SizedBox(height: USizes.spaceBtwItems),
        BannersDotNavigation(),
      ],
    );
  }
}
