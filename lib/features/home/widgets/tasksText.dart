import 'package:flutter/material.dart';
import 'package:tasks/component/Strings.dart';
import 'package:tasks/component/TextStyles.dart';

class Tasks extends StatelessWidget {
  const Tasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(Strings.tasks, style: myTextStyle.taskStyle,
    );
  }
}