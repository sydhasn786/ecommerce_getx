import 'package:flutter/material.dart';

class UIHelperFunctions {
  
  UIHelperFunctions._();
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
