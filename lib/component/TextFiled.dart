import 'package:flutter/material.dart';

class kTextField extends StatelessWidget {
  final String? hintText;
  final Widget? label;
  final TextEditingController? myController;
  final double cursorWidth;
  const kTextField({super.key, this.hintText, this.myController, this.cursorWidth = 2.0, this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorWidth: cursorWidth,
      controller: myController,
      decoration: InputDecoration(
        hintText: hintText,
        label: label
      ),
    );
  }
}
