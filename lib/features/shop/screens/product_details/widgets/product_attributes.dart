import 'package:flutter/material.dart';
import 'package:getx/common/widgets/custom_shapes/rounded_container.dart';
import 'package:getx/common/widgets/texts/product_price.dart';
import 'package:getx/common/widgets/texts/product_title_text.dart';
import 'package:getx/common/widgets/texts/section_heading.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/helpers/helper_functions.dart';

class UProductAttributes extends StatelessWidget {
  const UProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UIHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // selecting attribute pricing and description
        URoundedContainer(
          padding: EdgeInsets.all(USizes.md),
          backgroundColor: dark ? UColors.darkerGrey : UColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// title price and stock
              Row(
                children: [
                  //[ text ] - variation heading
                  USectionHeading(title: 'Variations', showActionButton: false),
                  SizedBox(width: USizes.spaceBtwItems),
                  Column(
                    children: [
                      Row(
                        children: [
                          // price, sale price, actual price
                          UProductTitleText(title: 'Price : ', smallSize: true),
                          Text(
                            '250',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: USizes.spaceBtwItems),
                          UProductPriceText(price: '200'),
                        ],
                      ),
                      /// stock and status
                      Row(
                        children: [
                          UProductTitleText(title: 'Stock :', smallSize: true),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
           
              /// Attribute description
              UProductTitleText(title: 'Description :', smallSize: true, maxLines: 4),
SizedBox(height: USizes.spaceBtwItems ),
USectionHeading(title: 'Colors', showActionButton: false),
ChoiceChip(label: Text('Red'))

            ],
          ),
        ),
      ],
    );
  }
}
