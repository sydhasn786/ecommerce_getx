import 'package:flutter/material.dart';
import 'package:getx/common/widgets/appbar/appbar.dart';
import 'package:getx/common/widgets/products/cart/cartcounter_icon.dart';
import 'package:getx/common/widgets/textfields/search_bar.dart';
import 'package:getx/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/constants/texts.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: UAppBar(),
      body: Stack(
        children: [
          SizedBox(height: USizes.homePrimaryHeaderHeight + 1),

          UPrimaryHeaderContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ctrl + alt + L to format code
                UHomeAppBar(),
                SizedBox(
                  height: USizes.spaceBtwSections),
                  // home categories
                  Text(UTexts.popularCategories, style: Theme.of(context).textTheme.headlineSmall!.apply(color: UColors.white)),
              ],
            ),
          ),
          
          //USearchBar() 
          USearchBar(),
        ],
      ),
    );
  }
}


class UHomeAppBar extends StatelessWidget {
  const UHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return UAppBar(
      showBackArrow: false,
      title: Column(
        children: [
          Text(
            UTexts.homeAppBarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: UColors.grey),
          ),
          Text(
            UTexts.homeAppBarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: UColors.grey),
          ),
        ],
      ),

      actions: [UCartCounterIcon()],
    );
  }
}
