import 'package:flutter/material.dart';
import 'package:getx/utils/constants/colors.dart';

class UBottomSheetTheme {
  UBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    backgroundColor: Colors.white,
    showDragHandle: true,
    modalBackgroundColor: UColors.white,
    constraints: BoxConstraints(
      minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),  
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    backgroundColor: UColors.darkGrey,
    showDragHandle: true,
    modalBackgroundColor: UColors.darkGrey,
    constraints: BoxConstraints(
      minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),  
  );
  
}
