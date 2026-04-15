import 'package:flutter/material.dart';
import 'package:getx/common/widgets/appbar/tabbar.dart';
import 'package:getx/common/widgets/brands/brand_card.dart';
import 'package:getx/common/widgets/texts/section_heading.dart';
import 'package:getx/features/shop/screens/store/widgets/category_tab.dart';
import 'package:getx/features/shop/screens/store/widgets/store_primary_header.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UIHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 320,
                pinned: true,
                floating: false,
                flexibleSpace: SingleChildScrollView(
                  child: Column(
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
                ),
                bottom: UTabBar(
                  tabs: [
                    Tab(text: 'Sports'),
                    Tab(text: 'Furniture'),
                    Tab(text: 'Electronics'),
                    Tab(text: 'Clothes'),
                    Tab(text: 'Cosmetics'),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              UCategoryTab(),
              UCategoryTab(),
              UCategoryTab(),
              UCategoryTab(),
              UCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}

