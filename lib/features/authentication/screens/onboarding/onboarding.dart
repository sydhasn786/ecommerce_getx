import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:getx/features/authentication/screens/onboarding/widgets/onBoardingDotNavigation.dart';
import 'package:getx/features/authentication/screens/onboarding/widgets/onBoardingNextButton.dart';
import 'package:getx/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:getx/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/constants/texts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: [
                OnBoardingPage(
                  animation: UImages.onboarding1Animation,
                  title: UTexts.onBoardingTitle1,
                  subTitle: UTexts.onBoardingSubTitle1,
                ),
                OnBoardingPage(
                  animation: UImages.onboarding2Animation,
                  title: UTexts.onBoardingTitle2,
                  subTitle: UTexts.onBoardingSubTitle2,
                ),
                OnBoardingPage(
                  animation: UImages.onboarding2Animation,
                  title: UTexts.onBoardingTitle3,
                  subTitle: UTexts.onBoardingSubTitle3,
                ),
              ],
            ),

            onBoardingDotNavigation(),

            // Next Button
            OnBoardingNextButton(),

            // Skip button
            OnBoardingSkipButton(),
          ],
        ),
      ),
    );
  }
}
