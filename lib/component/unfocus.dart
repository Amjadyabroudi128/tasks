import 'package:flutter/material.dart';

unFocus (context) {
  return FocusScope.of(context).requestFocus(FocusNode());
}