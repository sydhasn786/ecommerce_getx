import 'package:flutter/material.dart';
import 'package:getx/common/style/padding.dart';
import 'package:getx/common/widgets/custom_shapes/rounded_container.dart';
import 'package:getx/common/widgets/images/circular_image.dart';
import 'package:getx/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:getx/common/widgets/texts/product_price.dart';
import 'package:getx/common/widgets/texts/product_title_text.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';

class UProductMetaData extends StatelessWidget {
  const UProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UPadding.screenPadding,
      child: Column(
        children: [
          // sale tag, sale price, actual price and share button
          Row(
            children: [
              // sale tag
              URoundedContainer(
                radius: USizes.sm,
                backgroundColor: UColors.yellow.withValues(alpha: 0.8),
                padding: const EdgeInsets.symmetric(
                  horizontal: USizes.sm,
                  vertical: USizes.xs,
                ),
                child: Text(
                  '20%',
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge!.apply(color: UColors.black),
                ),
              ),
    
              // sale price
              SizedBox(width: USizes.spaceBtwItems),
              Text(
                "\$250",
                style: Theme.of(context).textTheme.titleSmall!.apply(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
    
              // actual price
              UProductPriceText(price: '150', isLarge: true),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.share)),
            ],
          ),
    
          SizedBox(height: USizes.spaceBtwItems / 1.5),
    
          // product title
          UProductTitleText(
            title: 'Apple iPhone 14 Pro Max 256GB - Deep Purple',
          ),
          SizedBox(height: USizes.spaceBtwItems / 1.5),
          // product status
          Row(
            children: [
              UProductTitleText(title: 'Status'),
              SizedBox(height: USizes.spaceBtwItems / 1.5),
              Text(
                'In Stock',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
    
          SizedBox(height: USizes.spaceBtwItems / 1.5),
    
          Row(
            children: [
              UCircularImage(
                padding: 0,
                image: UImages.appleLogo,
                width: 32.0,
                height: 32.0,
              ),
              SizedBox(width: USizes.spaceBtwItems / 2),
              UBrandTitleWithVerifyIcon(title: 'Apple'),
            ],
          ),
        ],
      ),
    );
  }
}
