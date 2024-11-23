
 import 'package:flutter/material.dart';
import 'package:tasks/Themes/colors.dart';

class AppTheme {
 static final myTheme = ThemeData().copyWith(
   iconTheme: IconThemeData(
     size: 32,
     color: ColorHelper.addIcon
   ),
   inputDecorationTheme: InputDecorationTheme(
     border: OutlineInputBorder(
         borderRadius: BorderRadius.all(
             Radius.circular(13)
         )
     ),
   )
 );
 }