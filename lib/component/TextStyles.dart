

import 'package:flutter/material.dart';
import 'package:tasks/Themes/colors.dart';
import 'package:tasks/Themes/fontWeight.dart';
import 'package:tasks/fontSizes.dart';

class myTextStyle {
  static TextStyle taskStyle = TextStyle(fontSize: 25, fontWeight: fontWeightHelper.bold,
  );
  static TextStyle empty = TextStyle(fontSize: myFonts.empty24);
  static TextStyle slide = TextStyle(fontSize: 12, color: ColorHelper.slideT);
  static TextStyle dismiss = TextStyle(fontSize: myFonts.CD20, color: ColorHelper.addIcon);
  static TextStyle confirm = TextStyle(fontSize: myFonts.CD20, color: ColorHelper.confirm);
 }