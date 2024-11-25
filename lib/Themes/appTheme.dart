
 import 'package:flutter/material.dart';
import 'package:tasks/Themes/colors.dart';

class AppTheme {
  static final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(
          Radius.circular(13)
      )
  );
 static final myTheme = ThemeData().copyWith(
   iconTheme: IconThemeData(
     size: 32,
     color: ColorHelper.addIcon
   ),
   inputDecorationTheme: InputDecorationTheme(
     border: border,
     focusedBorder: border,
       focusColor: ColorHelper.focusClr
   ),
  checkboxTheme: CheckboxThemeData(
  checkColor: WidgetStateProperty.all(Colors.green),
  fillColor: WidgetStateProperty.all(Colors.white),
  ),

  );
 }