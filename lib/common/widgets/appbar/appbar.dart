import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/helpers/device_helpers.dart';
import 'package:getx/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class UAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UAppBar({
    super.key,
    this.title,
    required this.showBackArrow,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    
    bool dark = UIHelperFunctions.isDarkMode(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: USizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(onPressed: Get.back, icon: Icon(Iconsax.arrow_left, color: dark ? UColors.white : UColors.black))
            : leadingIcon != null
            ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon, color: dark ? UColors.white : UColors.black))
            : null,
        //title
        title: title,
        //actions
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(UDeviceHelper.getAppBarHeight());
}
