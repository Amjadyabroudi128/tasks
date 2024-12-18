
import 'package:flutter/material.dart';
import 'package:tasks/Themes/colors.dart';
import 'package:tasks/fontSizes.dart';

class containerBorder {
 static Border btm = Border(
     bottom: BorderSide(
         color: ColorHelper.myColor,
         width: myFonts.btmBorder,
         // style: BorderStyle.solid
     ),
     right: BorderSide(
         color: ColorHelper.myColor,
         width: myFonts.mWidth,
     )
 );
 static final border = OutlineInputBorder(
     borderRadius: BorderRadius.all(
         Radius.circular(13)
     )
 );
 static BorderRadiusGeometry B13 = BorderRadius.circular(13);
 }