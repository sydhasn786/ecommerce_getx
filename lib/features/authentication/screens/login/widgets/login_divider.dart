import 'package:flutter/material.dart';
import 'package:getx/utils/constants/colors.dart';
import 'package:getx/utils/helpers/helper_functions.dart';

class ULoginDivider extends StatelessWidget {
  const ULoginDivider({super.key,  required this.title});

 
  final String title;

  @override
  Widget build(BuildContext context) {
     final dark = UIHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Expanded(child: Divider(indent: 60, endIndent: 5, thickness: 0.5, color: dark ? UColors.darkGrey : Colors.grey)),

        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),

        Expanded(
          child: Divider(
            indent: 5,
            endIndent: 60,
            thickness: 0.5,
            color: dark ? UColors.darkGrey : Colors.grey,
          ),
        ),
      ],
    );
  }
}
