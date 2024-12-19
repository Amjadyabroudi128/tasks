
import 'package:flutter/material.dart';
import 'package:tasks/Themes/colors.dart';
import 'package:tasks/fontSizes.dart';

class containerBorder {
  static Color myColor = ColorHelper.border;
 static Border btm = Border(
     bottom: BorderSide(
         color: myColor,
         width: myFonts.btmBorder,
         // style: BorderStyle.solid
     ),
     right: BorderSide(
         color: myColor,
         width: 2,
     )
 );
 static final border = OutlineInputBorder(
     borderRadius: BorderRadius.all(
         Radius.circular(13)
     )
 );
 static BorderRadiusGeometry B13 = BorderRadius.circular(13);
 }