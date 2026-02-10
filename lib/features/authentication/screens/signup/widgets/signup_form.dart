import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/common/widgets/button/elevated_button.dart';
import 'package:getx/common/widgets/button/login_buttons.dart';
import 'package:getx/features/authentication/screens/login/widgets/login_divider.dart';
import 'package:getx/features/authentication/screens/signup/verify_email.dart';
import 'package:getx/features/authentication/screens/signup/widgets/privacy_policy_checkbox.dart.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/constants/texts.dart';
import 'package:iconsax/iconsax.dart';

class UsignupForm extends StatelessWidget {
  const UsignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: UTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
    
            SizedBox(width: USizes.spaceBtwInputFields),
    
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: UTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
    
        SizedBox(height: USizes.spaceBtwInputFields),
    
        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.email,
            prefixIcon: Icon(Iconsax.direct_right),
          ),
        ),
    
        SizedBox(height: USizes.spaceBtwInputFields),
    
        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.phoneNumber,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
    
        SizedBox(height: USizes.spaceBtwInputFields),
    
        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        UPrivacyPolicy(),
        SizedBox(height: USizes.spaceBtwSections),
    
        UElevatedButton(onPressed: () => Get.to(() => VerifyEmailScreen()), child: Text(UTexts.signUp)),
    
        SizedBox(height: USizes.spaceBtwSections),
    
        ULoginDivider(title: UTexts.orSignupWith),
    
        SizedBox(height: USizes.spaceBtwInputFields),
        ULoginBottomButton(),
      ],
    );
  }
}
