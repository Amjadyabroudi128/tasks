import 'package:flutter/material.dart';
import 'package:tasks/component/Strings.dart';
import 'package:tasks/component/textButton.dart';

Future<bool?> deleteDialog(BuildContext context, task) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("about to delete ${task["task"]}"),
        content: Text(Strings.sure),
        actions: [
          kTextBtn(
            onPressed: () => Navigator.of(context).pop(false), // Don't dismiss
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true), // Confirm dismissal
            child: Text('Delete'),
          ),
        ],
      );
    },
  );
}
