import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/common/style/padding.dart';
import 'package:getx/common/widgets/button/elevated_button.dart';
import 'package:getx/features/authentication/screens/login/login.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/constants/texts.dart';
import 'package:getx/utils/helpers/device_helpers.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(LoginScreen()),
            icon: Icon(Icons.close),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              Image.asset(
                UImages.mailSentImage,
                height: UDeviceHelper.getScreenWidth(context) * 0.4,
              ),

              SizedBox(height: USizes.spaceBtwItems),

              Text(
                UTexts.verifyEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Text(
                "Sydhasn786@gmail.com",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Text(
                UTexts.verifyEmailSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwSections),

              UElevatedButton(onPressed: () {}, child: Text(UTexts.done)),
              SizedBox(height: USizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(UTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
