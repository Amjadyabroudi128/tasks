

import 'package:flutter/material.dart';
import 'package:tasks/Themes/colors.dart';
import 'package:tasks/Themes/fontWeight.dart';

class myTextStyle {
  static TextStyle taskStyle = TextStyle(fontSize: 25, fontWeight: fontWeightHelper.bold,
  );
  static TextStyle empty = TextStyle(fontSize: 24);
  static TextStyle slide = TextStyle(fontSize: 12, color: ColorHelper.slideT);
  static TextStyle dismiss = TextStyle(fontSize: 20, color: ColorHelper.addIcon);
 }