import 'package:flutter/material.dart';

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
      child: TextField(
        controller: myController,
        decoration: InputDecoration(
          hintText: 'Enter a task',
        ),
      ),
    );
  }
}
