import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();

  RxInt currentIndex = 0.obs;

  // update current index when page scrollsadb devices

  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  // jump to specific dot selected page
  void dotNavigationClick(index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  // go to next page Update current index and jump to next page
  void nextPage() {
    if (currentIndex.value == 2) {
      return;
    } else {
      currentIndex.value++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void skipPage() {}
}
