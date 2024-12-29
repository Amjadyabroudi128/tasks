

import 'package:flutter/material.dart';
import 'package:tasks/Themes/colors.dart';
import 'package:tasks/Themes/fontWeight.dart';
import 'package:tasks/fontSizes.dart';

class myTextStyle {
  static TextStyle taskStyle = TextStyle(fontSize: myFonts.Task25, fontWeight: fontWeightHelper.bold,
  );
  static TextStyle empty = TextStyle(fontSize: myFonts.empty24);
  static TextStyle slide = TextStyle(fontSize: myFonts.S12, color: ColorHelper.slideT);
  static TextStyle dismiss = TextStyle(fontSize: myFonts.CD20, color: ColorHelper.addIcon);
  static TextStyle confirm = TextStyle(fontSize: myFonts.CD20, color: ColorHelper.confirm);
  static TextDecoration myDecoration = TextDecoration.lineThrough;
  static TextStyle save = TextStyle(fontSize: myFonts.save, color: ColorHelper.save);
  static TextStyle cancel = TextStyle(fontSize: myFonts.cancel, color: ColorHelper.addIcon);
  static TextStyle sure = TextStyle(fontSize: myFonts.font18, fontWeight: fontWeightHelper.bold, color: ColorHelper.unSelected);
  static TextStyle label = TextStyle(fontSize: myFonts.L16, color: ColorHelper.label);
  static TextStyle floating = TextStyle(fontSize: 19, color: ColorHelper.floating);
 }