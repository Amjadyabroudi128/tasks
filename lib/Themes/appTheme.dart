
import 'package:flutter/material.dart';
import 'package:tasks/Themes/colors.dart';
import 'package:tasks/component/containerBorder.dart';
import 'package:tasks/fontSizes.dart';

class AppTheme {
  static BorderSide myWidget(Color color, double myWidth) {
    return BorderSide(
        color: color,
        width: myWidth
    );
  }

 static final myTheme = ThemeData().copyWith(
   iconTheme: IconThemeData(
     size: myFonts.defaultIcon,
     color: ColorHelper.addIcon
   ),
   inputDecorationTheme: InputDecorationTheme(
     border: containerBorder.border,
     focusedBorder: containerBorder.border,
       focusColor: ColorHelper.focusClr
   ),
  checkboxTheme: CheckboxThemeData(
    checkColor: WidgetStateProperty.all(ColorHelper.selectedClr),
    fillColor: WidgetStateProperty.all(ColorHelper.filledClr),
    side: WidgetStateBorderSide.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return myWidget(ColorHelper.selectedClr,myFonts.mWidth);
      } else {
        // Border when the checkbox is not selected
        return myWidget( ColorHelper.unSelected, myFonts.mWidth);
      }
    }),
  ),
   textSelectionTheme: TextSelectionThemeData(
     cursorColor: ColorHelper.CursorClr,
     selectionHandleColor: Colors.black,
     selectionColor: Colors.blueAccent
   ),
 );
 }