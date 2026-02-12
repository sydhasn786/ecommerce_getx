import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/features/shop/screens/home/home.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigationMenu extends StatelessWidget {
  const BottomNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    bool dark = UIHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0, // remove shadow
          backgroundColor: dark ? UColors.dark : UColors.light,
          indicatorColor: dark ? UColors.light.withValues(alpha: 0.1) : UColors.dark.withValues(alpha: 0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "WishList"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  List<Widget> screens = [HomeScreen(),Container(color: Colors.green),Container(color: Colors.blue),Container(color: Colors.yellow)];
}
