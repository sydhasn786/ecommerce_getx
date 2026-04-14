import 'package:flutter/material.dart';
import 'package:getx/common/widgets/appbar/appbar.dart';
import 'package:getx/common/widgets/products/cart/cartcounter_icon.dart';
import 'package:getx/common/widgets/textfields/search_bar.dart';
import 'package:getx/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:getx/utils/constants/sizes.dart';

class UStorePrimaryHeader extends StatelessWidget {
  const UStorePrimaryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // total height = primary header height + 10
        SizedBox(height: USizes.storePrimaryHeaderHeight + 10),

        UPrimaryHeaderContainer(
          height: USizes.storePrimaryHeaderHeight,
          child: UAppBar(
            title: Text(
              "Store",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [
              
              UCartCounterIcon()
              
              ],
          ),
        ),

        //USearchBar()
        USearchBar(),
      ],
    );
  }
}
