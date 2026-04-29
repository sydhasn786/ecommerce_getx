import 'package:flutter/material.dart';
import 'package:getx/common/style/padding.dart';
import 'package:getx/common/widgets/appbar/appbar.dart';
import 'package:getx/common/widgets/icons/circular_icon.dart';
import 'package:getx/common/widgets/images/user_profile_logo.dart';
import 'package:getx/common/widgets/texts/section_heading.dart';
import 'package:getx/features/personalization/screens/edit_profile/widgets/user_profile_with_edit_icon.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          'Edit Profile',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              UserProfileWithEditIcon(),
              SizedBox(height: USizes.spaceBtwSections),

              //divider
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),

              //Account Settings Heading
              USectionHeading(
                title: 'Account Settings',
                showActionButton: false,
              ),
              UserDetailRow(title: 'Name', value: 'Ali Hassan', onTap: () {}),
              UserDetailRow(
                title: 'Username',
                value: 'alihassan',
                onTap: () {},
              ),

              //divider
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),
              //profile Settings Heading
              USectionHeading(
                title: 'Profile Settings',
                showActionButton: false,
              ),
              UserDetailRow(title: 'User ID', value: '232345', onTap: () {}),
              UserDetailRow(
                title: 'Email',
                value: 'ali@gmail.com',
                onTap: () {},
              ),
              UserDetailRow(
                title: 'Phone Number',
                value: '+92 306 0594109',
                onTap: () {},
              ),
              UserDetailRow(title: 'Gender', value: 'Male', onTap: () {}),

              //divider
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),

              TextButton(onPressed: () {}, child: Text('Close Account', style: TextStyle(color: Colors.red),)),
            ],
          ),
        ),
      ),
    );
  }
}

class UserDetailRow extends StatelessWidget {
  const UserDetailRow({
    super.key,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_right_34,
    required this.onTap,
  });

  final String title, value;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: USizes.spaceBtwItems / 1.5,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(flex: 1, child: Icon(icon, size: USizes.iconSm)),
          ],
        ),
      ),
    );
  }
}
