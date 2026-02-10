import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/common/widgets/button/elevated_button.dart';
import 'package:getx/features/authentication/screens/forget_password/forget_password.dart';
import 'package:getx/features/authentication/screens/signup/signup.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/constants/texts.dart';
import 'package:iconsax/iconsax.dart';

class ULoginForm extends StatelessWidget {
  const ULoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///Email
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: UTexts.email,
          ),
        ),
    
        SizedBox(height: USizes.spaceBtwInputFields),
    
        ///Password
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: UTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
    
        SizedBox(height: USizes.spaceBtwInputFields / 2),
    
        ///Remember me
        Row(
          children: [
            Checkbox(value: true, onChanged: (value) {}),
            SizedBox(width: USizes.sm),
            Text(UTexts.rememberMe),
            Spacer(),
            TextButton(
              // equal to Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordScreen())),
             
              onPressed: () => Get.to(() => ForgetPasswordScreen()), child: Text(UTexts.forgetPassword),
            ),
          ],
        ),
    
        ///Forgot password
        ///SignIn
        SizedBox(height: USizes.spaceBtwSections),
    
        UElevatedButton(onPressed: () {}, child: Text(UTexts.signIn)),
    
        SizedBox(height: USizes.spaceBtwSections / 2),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () => Get.to(() => SignupScreen()),
            child: Text(UTexts.createAccount),
          ),
        ),
    
        ///Create Account
      ],
    );
  }
}
