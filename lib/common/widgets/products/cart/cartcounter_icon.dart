import 'package:flutter/material.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class UCartCounterIcon extends StatelessWidget {
  const UCartCounterIcon({
    super.key,
 
  });

  @override
  Widget build(BuildContext context) {
    
    bool dark = UIHelperFunctions.isDarkMode(context);
    return Stack(
      children: [ IconButton(
        onPressed: (){},
        icon: const Icon(Iconsax.shopping_bag),
        color: UColors.dark
      ),
      Positioned(
        right: 6,
        child: Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
            color: dark ?UColors.dark : UColors.light, shape: BoxShape.circle,
            
          ),
          child: Center(
            child: Text('3',
            style:  Theme.of(context).textTheme.labelLarge!.apply(fontSizeFactor: 0.8, color: dark ? UColors.light : UColors.dark),)),
        ),
      )
    
    
      ]
    );
  }
}

