import 'package:flutter/material.dart';
import 'package:getx/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:getx/utils/helpers/device_helpers.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = OnboardingController.instance;
    
    return Positioned(
      top: UDeviceHelper.getAppBarHeight(),
      right: 0,
      child: TextButton(onPressed: controller.skipPage, child: Text("Skip")),
    );
  }
}
