import 'package:flutter/material.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/constants/texts.dart';
import 'package:getx/utils/helpers/helper_functions.dart';

class UPrivacyPolicy extends StatelessWidget {
  const UPrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UIHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium,
            children: [
              TextSpan(text: UTexts.iAgreeTo),
              TextSpan(
                text: UTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: dark ? UColors.white : UColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? UColors.white : UColors.primary,
                ),
              ),
              TextSpan(text: UTexts.and),
              TextSpan(
                text: UTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: dark ? UColors.white : UColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? UColors.white : UColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
