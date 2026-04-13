import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';
import 'features/shop/screens/home/home.dart';



class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    bool dark = UIHelperFunctions.isDarkMode(context);

    return Scaffold(

      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      /// -----[Navigation Menu]-----
      bottomNavigationBar: Obx(
        () => NavigationBar(
            elevation: 0,
            backgroundColor: dark ? UColors.dark : UColors.light,
            indicatorColor: dark ? UColors.light.withValues(alpha: 0.1) : UColors.dark.withValues(alpha: 0.1),
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) {
              controller.selectedIndex.value = index;
            },
            destinations: [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              
              NavigationDestination(icon: Icon(Iconsax.profile), label: 'Profile'),
              ]),
      ),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();
  RxInt selectedIndex = 0.obs;


  List<Widget> screens = [HomeScreen(), ProfileScreen()];
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Profile');
  }
}