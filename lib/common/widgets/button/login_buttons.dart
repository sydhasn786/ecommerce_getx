import 'package:flutter/material.dart';
import 'package:getx/utils/constants/sizes.dart';


class ULoginBottomButton extends StatelessWidget {
  const ULoginBottomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // google button
        buildContainer("assets/logo/google-icon.png", () {}),
    
        SizedBox(width: USizes.spaceBtwItems),

        // facebook button

        buildContainer("assets/logo/facebook-icon.png", () {}),
      ],
    );
  }

  Container buildContainer(String image, VoidCallback onPressed) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(100),
        
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: Image.asset(
            image,
            width: USizes.iconMd,
            height: USizes.iconMd,
          ),
        ),
      );
  }
}
