import 'package:flutter/material.dart';

class myText extends StatelessWidget {
  const myText({
    super.key,
    required this.myController,
  });

  final TextEditingController myController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      decoration: InputDecoration(
        hintText: 'Enter a task',
      ),
    );
  }
}
