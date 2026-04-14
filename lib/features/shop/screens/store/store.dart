import 'package:flutter/material.dart';
import 'package:getx/common/widgets/appbar/appbar.dart';
import 'package:getx/common/widgets/brands/brand_card.dart';
import 'package:getx/common/widgets/custom_shapes/rounded_container.dart';
import 'package:getx/common/widgets/images/rounded_images.dart';
import 'package:getx/common/widgets/products/cart/cartcounter_icon.dart';
import 'package:getx/common/widgets/textfields/search_bar.dart';
import 'package:getx/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:getx/common/widgets/texts/section_heading.dart';
import 'package:getx/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:getx/features/shop/screens/home/widgets/home_categories.dart';
import 'package:getx/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:getx/features/shop/screens/store/widgets/store_primary_header.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/helpers/device_helpers.dart';
import 'package:getx/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 300,
                pinned: true,
                floating: true,
                flexibleSpace: Column(
                  children: [
                    // primary header
                    UStorePrimaryHeader(),
      
                    SizedBox(height: USizes.spaceBtwItems),
      
                    // Brands Heading
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: USizes.defaultSpace,
                      ),
                      child: Column(
                        children: [
                          USectionHeading(
                            title: "Brands",
                            buttonTitle: "View all",
                            onPressed: () {},
                          ),
      
                          //brand card
                          SizedBox(
                            height: 70.0,
                            child: ListView.separated(
                              itemCount: 10,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => UBrandCard(),
                              separatorBuilder: (context, index) =>
                                  SizedBox(width: USizes.spaceBtwItems),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                bottom: UTabBar(),
              
              ),
            ];
          },
          body: Container(),
        ),
      ),
    );
  }
}

class UTabBar extends StatelessWidget implements PreferredSizeWidget {
  const UTabBar({
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(UDeviceHelper.getAppBarHeight());
  @override
  Widget build(BuildContext context) {
    final dark = UIHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? UColors.dark : UColors.white,
      child: TabBar(
        isScrollable: true,
        tabs: [
        Tab(child: Text("Sports")),
        Tab(child: Text("Furniture")),
        Tab(child: Text("Electronics")),
        Tab(child: Text("Clothes")),
        Tab(child: Text("Cosmetics")),
      ],),
    );
  }
}
