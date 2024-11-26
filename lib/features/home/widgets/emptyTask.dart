import 'package:flutter/material.dart';

class emptyTasks extends StatelessWidget {
  const emptyTasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Please Add Some Tasks :)", style: TextStyle(fontSize: 24),),
    );
  }
}
