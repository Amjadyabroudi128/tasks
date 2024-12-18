
import 'package:flutter/material.dart';
import 'package:tasks/Themes/colors.dart';

class containerBorder {
 static Border btm = Border(
     bottom: BorderSide(
         color: ColorHelper.border,
         width: 2,
         style: BorderStyle.solid
     ),
     right: BorderSide(
         color: ColorHelper.border,
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