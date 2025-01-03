
import 'package:flutter/material.dart';
import 'package:tasks/Themes/colors.dart';
import 'package:tasks/component/TextStyles.dart';
import 'package:tasks/component/containerBorder.dart';
import 'package:tasks/fontSizes.dart';

class AppTheme {
  static BorderSide myWidget(Color color, double myWidth) {
    return BorderSide(
        color: color,
        width: myWidth
    );
  }
 static myState(Color color) {
    return WidgetStatePropertyAll(color);
 }
 static final myTheme = ThemeData().copyWith(
   iconTheme: IconThemeData(
     size: myFonts.defaultIcon,
     color: ColorHelper.addIcon
   ),
   inputDecorationTheme: InputDecorationTheme(
     border: containerBorder.border,
     labelStyle: myTextStyle.label,
     floatingLabelStyle: myTextStyle.floating,
     focusedBorder: containerBorder.border,
       focusColor: ColorHelper.focusClr
   ),
  checkboxTheme: CheckboxThemeData(
    checkColor: myState(ColorHelper.selectedClr),
    fillColor: myState(ColorHelper.filledClr),
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
     selectionHandleColor: ColorHelper.handle,
     selectionColor: ColorHelper.accent
   ),
 );
 }