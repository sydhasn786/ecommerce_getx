import 'package:flutter/material.dart';
import 'package:getx/common/widgets/custom_shapes/circular_container.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/constants/texts.dart';

class UHomeCategories extends StatelessWidget {
  const UHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
      UTexts.popularCategories,
      style: Theme.of(
        context,
      ).textTheme.headlineSmall!.apply(color: UColors.white),
    ),
    
    SizedBox(
      height: USizes.spaceBtwItems / 2,
    ),
    
    // press ctrl + space you will get suggestions
    SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              // circular image container
              UCircularContainer(
                height: 56,
                width: 56,
                child: Image(image: AssetImage(UImages.sportsIcon),),
              ),
    
              SizedBox(
                width: 55,
                child: Text('Sport Categories', 
                style: Theme.of(context).textTheme.labelMedium!.apply(color: UColors.white),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,))
    
            ],
             );
        },
      ),
    ),
      ],
    );
  }
}
