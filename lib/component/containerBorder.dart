
import 'package:flutter/material.dart';
import 'package:tasks/Themes/colors.dart';
import 'package:tasks/fontSizes.dart';

class containerBorder {
  static final BorderRadius B13 = BorderRadius.circular(myFonts.C13);
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
     borderRadius: B13
 );
 static final Decoration myDecoration = BoxDecoration(
     border: containerBorder.btm,
     borderRadius: containerBorder.B13
 );
 static final Decoration deleteDecoration = BoxDecoration(
   borderRadius: containerBorder.B13,
 );
 }