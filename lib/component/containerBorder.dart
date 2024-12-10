
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
         width: 2
     )
 );
 }