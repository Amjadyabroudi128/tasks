import 'package:flutter/material.dart';

class kTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? myController;

  const kTextField({super.key, this.hintText, this.myController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      decoration: InputDecoration(
        hintText: hintText
      ),
    );
  }
}
