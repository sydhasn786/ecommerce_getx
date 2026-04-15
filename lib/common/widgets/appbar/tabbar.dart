import 'package:flutter/material.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/helpers/device_helpers.dart';
import 'package:getx/utils/helpers/helper_functions.dart';

class UTabBar extends StatelessWidget implements PreferredSizeWidget {
  const UTabBar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Size get preferredSize => Size.fromHeight(UDeviceHelper.getAppBarHeight());
  @override
  Widget build(BuildContext context) {
    final dark = UIHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? UColors.dark : UColors.white,
      child: TabBar(
        isScrollable: true,
        labelColor: dark ? UColors.white : UColors.primary,
        unselectedLabelColor: UColors.darkGrey,
        indicatorColor: UColors.primary,
        tabs: tabs,
      ),
    );
  }
}
