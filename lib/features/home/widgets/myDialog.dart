import 'package:flutter/material.dart';

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
      title: Text('Edit Task'),
      content: kTextField(
        myController: _editController,
        hintText: "Update Task",
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () async {
            if (_editController.text.isNotEmpty) {
              await _editTask(task['id'], _editController.text);
              Navigator.pop(context);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Task cannot be empty')),
              );
            }
          },
          child: Text('Save'),
        ),
      ],
    ),
  );
}