import 'package:flutter/material.dart';
import 'package:getx/common/style/padding.dart';
import 'package:getx/common/widgets/button/elevated_button.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/constants/texts.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: UPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title
            Text(
              UTexts.forgetPassword,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            SizedBox(height: USizes.spaceBtwItems / 2,),

            Text(UTexts.forgetPasswordSubTitle, 
            style: Theme.of(context).textTheme.labelMedium),

            // form

            Column(
              children: [

                TextFormField(
                  decoration: InputDecoration(
                    labelText: UTexts.email,
                    prefixIcon: Icon(Iconsax.direct_right),
                  ),
                ),

                SizedBox(height: USizes.spaceBtwItems),

                UElevatedButton(onPressed: (){}, child: Text(UTexts.submit)),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
