import 'package:flutter/material.dart';
import 'package:tasks/Themes/TextStyles.dart';

class Tasks extends StatelessWidget {
  const Tasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Tasks", style: myTextStyle.taskStyle,
    );
  }
}