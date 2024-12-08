import 'package:flutter/material.dart';
import 'package:tasks/component/Strings.dart';
import 'package:tasks/component/TextFiled.dart';

class myText extends StatelessWidget {
  const myText({
    super.key,
    required this.myController,
  });

  final TextEditingController myController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: kTextField(
        myController: myController,
        hintText: Strings.hint,
      ),
    );
  }
}
