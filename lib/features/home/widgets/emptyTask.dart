import 'package:flutter/material.dart';
import 'package:tasks/component/TextStyles.dart';

class emptyTasks extends StatelessWidget {
  const emptyTasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(myTextStyle.addSomething, style: myTextStyle.empty,),
    );
  }
}
