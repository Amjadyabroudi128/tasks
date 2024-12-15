import 'package:flutter/material.dart';
import 'package:tasks/component/Strings.dart';
import 'package:tasks/component/TextStyles.dart';
import 'package:tasks/component/snackBar.dart';
import 'package:tasks/component/textButton.dart';

import '../../../component/TextFiled.dart';
import '../../../supabase/CRUD.dart';

Future<dynamic> myDialog(
    BuildContext context, TextEditingController _editController, task, Function fetchTasks,) {
  final mySupabase _mySupabase = mySupabase();

  Future<void> _editTask(int id, String updatedTask) async {
    await _mySupabase.editTask(id, updatedTask);
    fetchTasks(); // Refresh the task list after update
  }

  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(Strings.edit),
      content: kTextField(
        myController: _editController,
        hintText: Strings.update,
      ),
      actions: [
        kTextBtn(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(Strings.cancel, style: TextStyle(fontSize: 17, color: Colors.black),),
        ),
        kTextBtn(
          onPressed: () async {
            if (_editController.text.isNotEmpty) {
              await _editTask(task['id'], _editController.text);
              Navigator.pop(context);
            } else {
              showSnackBar(context, Strings.noEmpty);
            }
          },
          child: Text(Strings.save, style: myTextStyle.save,),
        ),
      ],
    ),
  );
}
