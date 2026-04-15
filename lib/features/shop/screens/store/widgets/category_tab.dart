import 'package:flutter/material.dart';
import 'package:getx/common/widgets/brands/brand_showcase.dart';
import 'package:getx/common/widgets/layout/grid_layout.dart';
import 'package:getx/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:getx/common/widgets/texts/section_heading.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';

class UCategoryTab extends StatelessWidget {
  const UCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: USizes.defaultSpace,
          ),
          child: Column(
            children: [
              UBrandShowcase(
                images: [
                  UImages.productImage1,
                  UImages.productImage2,
                ],
              ),
              UBrandShowcase(
                images: [
                  UImages.productImage1,
                  UImages.productImage2,
                ],
              ),
              SizedBox(height: USizes.spaceBtwItems),
    
              USectionHeading(
                title: 'YouMight Like',
                buttonTitle: 'View all',
                onPressed: () {},
              ),
    
              UGridLayout(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return UProductCardVertical();
                },
              ),

              SizedBox(height: USizes.spaceBtwSections)
            ],
          ),
        ),
      ],
    );
  }
}
