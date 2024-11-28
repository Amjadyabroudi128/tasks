import 'package:flutter/material.dart';

class isCompleted extends StatelessWidget {
  const isCompleted({
    super.key,
    required this.task,
  });

  final task;

  @override
  Widget build(BuildContext context) {
    return Text(
      task['task'],
      style: TextStyle(
        decoration: task['isCompleted'] ? TextDecoration.lineThrough : null,
      ),
    );
  }
}
