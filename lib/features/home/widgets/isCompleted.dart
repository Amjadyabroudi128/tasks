import 'package:flutter/material.dart';
import 'package:tasks/Themes/colors.dart';
import 'package:tasks/component/TextStyles.dart';
import 'package:tasks/fontSizes.dart';

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
        decoration: task['isCompleted'] ? myTextStyle.myDecoration: null,
        decorationColor: ColorHelper.dClr,
        decorationThickness: myFonts.thickness
      ),
    );
  }
}
