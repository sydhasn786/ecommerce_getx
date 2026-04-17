import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/common/widgets/appbar/appbar.dart';
import 'package:getx/common/widgets/icons/circular_icon.dart';
import 'package:getx/common/widgets/layout/grid_layout.dart';
import 'package:getx/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:getx/features/shop/screens/home/home.dart';
import 'package:getx/navigation_menu.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          UCircularIcon(
            icon: null,
            onPressed: () {},

            child: IconButton(
              onPressed: () async =>
                  NavigationController.instance.selectedIndex.value = 0,
              icon: Icon(Iconsax.add, color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: UGridLayout(
            itemBuilder: (context, index) => UProductCardVertical(),
            itemCount: 10,
          ),
        ),
      ),
    );
  }
}
