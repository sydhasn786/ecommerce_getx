import 'package:flutter/material.dart';
import 'package:getx/common/style/padding.dart';
import 'package:getx/common/widgets/button/elevated_button.dart';
import 'package:getx/utils/constants/images.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/constants/texts.dart';
import 'package:getx/utils/helpers/device_helpers.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image, 
    required this.onTap,
  });

  final String title, subTitle, image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Padding(
        padding: UPadding.screenPadding,
        child: Column(
          children: [
            // image
            Image.asset(
              image,
              height: UDeviceHelper.getScreenWidth(context) * 0.6,
            ),
            SizedBox(height: USizes.spaceBtwItems),

            //title
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: USizes.spaceBtwItems),

            // subtitle
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: USizes.spaceBtwSections),

            //continue
            UElevatedButton(onPressed: onTap, child: Text(UTexts.uContinue)),
          ],
        ),
      ),
    );
  }
}
