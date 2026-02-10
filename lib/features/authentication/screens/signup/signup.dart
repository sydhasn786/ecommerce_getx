import 'package:flutter/material.dart';
import 'package:getx/common/style/padding.dart';
import 'package:getx/common/widgets/button/elevated_button.dart';
import 'package:getx/common/widgets/button/login_buttons.dart';
import 'package:getx/features/authentication/screens/login/widgets/login_divider.dart';
import 'package:getx/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/constants/texts.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header title
              Text(
                UTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              SizedBox(height: USizes.spaceBtwSections),

              // forms
              UsignupForm(),
            ],
          ),
        ),
      ),
    );
  }
}

