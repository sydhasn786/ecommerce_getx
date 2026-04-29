import 'package:flutter/material.dart';
import 'package:getx/common/widgets/icons/circular_icon.dart';
import 'package:getx/common/widgets/images/user_profile_logo.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileWithEditIcon extends StatelessWidget {
  const UserProfileWithEditIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // user profile logo
        Center(child: UserProfileLogo()),
    
        Positioned(
          bottom: 0,
          right: 0,
          top: 0,
          left: 0,
          child: Center(child: UCircularIcon(icon: Iconsax.edit)),
        ),
      ],
    );
  }
}
