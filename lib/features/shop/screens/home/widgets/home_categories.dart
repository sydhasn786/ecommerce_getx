import 'package:flutter/material.dart';
import 'package:getx/common/widgets/image_text/vertical_image_text.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/constants/texts.dart';

class UHomeCategories extends StatelessWidget {
  const UHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: USizes.spaceBtwSections),
      child: Column(
        children: [
          Text(
            UTexts.popularCategories,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: UColors.white),
          ),

          SizedBox(height: USizes.spaceBtwItems),

          // press ctrl + space you will get suggestions
          SizedBox(
            height: 90,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: USizes.spaceBtwItems),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return UVerticalImageText(
                  title: 'Sports Categories',
                  image: UImages.sportsIcon,
                  textColor: UColors.white,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

