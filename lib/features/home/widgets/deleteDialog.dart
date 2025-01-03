import 'package:flutter/material.dart';
import 'package:tasks/component/Strings.dart';
import 'package:tasks/component/TextStyles.dart';
import 'package:tasks/component/snackBar.dart';
import 'package:tasks/component/textButton.dart';

Future<bool?> deleteDialog(BuildContext context, task) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("${Strings.aboutTo} ${task["task"]}"),
        content: Text(Strings.sure, style: myTextStyle.sure,),
        actions: [
          kTextBtn(
            onPressed: () => Navigator.of(context).pop(false), // Don't dismiss
            child: Text(Strings.cancel, style: myTextStyle.dismiss),
          ),
          kTextBtn(
            onPressed: (){
              Navigator.of(context).pop(true); // confirm dismissal
              showSnackBar(context, Strings.deleted);
            },
            child: Text(Strings.delete, style: myTextStyle.confirm,),
          ),
        ],
      );
    },
  );
}
