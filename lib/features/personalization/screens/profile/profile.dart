import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:getx/common/widgets/images/circular_image.dart';
import 'package:getx/common/widgets/texts/section_heading.dart';
import 'package:getx/features/personalization/screens/address/address.dart';
import 'package:getx/features/personalization/screens/profile/widgets/profile_primary_widgets.dart';
import 'package:getx/features/personalization/screens/profile/widgets/setting_menu_tile.dart';
import 'package:getx/features/personalization/screens/profile/widgets/user_profile_tile.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UProfilePrimaryHeader(),

            Padding(
              padding: const EdgeInsets.all(USizes.defaultSpace),
              child: Column(
                children: [
                  // user profile details
                  UserProfileTile(),

                  SizedBox(height: USizes.spaceBtwItems),

                  //Account Settings Heading
                  USectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),

                  //Setting menu
                  SettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subtitle: 'Set Shopping delivery addresses',
                    onTap: () => Get.to(() => AddressScreen()),
                  ),
                  SettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-Progress and Complete Orders',
                    onTap: () {},
                  ),
                  SizedBox(height: USizes.spaceBtwItems),

                  // logout
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Logout'),
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
