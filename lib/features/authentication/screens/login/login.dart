import 'package:flutter/material.dart';
import 'package:getx/utils/constants/sizes.dart';
import 'package:getx/utils/constants/texts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [


        // title
        Text(UTexts.loginTitle, style: Theme.of(context).textTheme.headlineSmall),
        
        SizedBox(height: USizes.sm),
        
        Text(UTexts.loginSubTitle, style: Theme.of(context).textTheme.bodySmall),

        // form body
        // divider
        // social login options
      

        ]
),
    );
  } 
}
