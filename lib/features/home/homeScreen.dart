import 'package:flutter/material.dart';
import 'package:tasks/Themes/icons.dart';
import 'package:tasks/component/ListTile.dart';
import 'package:tasks/component/containerBorder.dart';
import 'package:tasks/component/paddings.dart';
import 'package:tasks/features/home/widgets/addButton.dart';
import 'package:tasks/features/home/widgets/deleteContainer.dart';
import 'package:tasks/features/home/widgets/deleteDialog.dart';
import 'package:tasks/features/home/widgets/emptyTask.dart';
import 'package:tasks/features/home/widgets/isCompleted.dart';
import 'package:tasks/features/home/widgets/saveDialog.dart';
import 'package:tasks/features/home/widgets/slideText.dart';
import 'package:tasks/features/home/widgets/tasksText.dart';
import 'package:tasks/features/home/widgets/text.dart';
import 'package:tasks/supabase/CRUD.dart';

import '../../Themes/mediaQuery.dart';
import '../../component/sizedBox.dart';

class myHome extends StatefulWidget {
  @override
  _myHomeState createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  final mySupabase _mySupabase = mySupabase();
  final TextEditingController myController = TextEditingController();
  List<dynamic> _tasks = [];
  bool isEmpty = true;

  @override
  void initState() {
    super.initState();
    _fetchTasks();
  }

  Future<void> _fetchTasks() async {
    final tasks = await _mySupabase.getTasks();
    setState(() {
      _tasks = tasks;
      isEmpty = _tasks.isEmpty;
    });
  }

  Future<void> _addTask(String taskName) async {
    await _mySupabase.addTask(taskName);
    myController.clear();
    _fetchTasks(); // Refresh the task list
  }

  Future<void> _toggleTask(int id, bool isCompleted) async {
    await _mySupabase.toggleTask(id, isCompleted);
    _fetchTasks(); // Refresh the task list
  }

  Future<void> _deleteTask(int id) async {
    await _mySupabase.deleteTask(id);
    _fetchTasks(); // Refresh the task list
  }



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: Padding(
          padding: myPadding.home,
          child: Column(
            children: [
              // Input Field
              Row(
                children: [
                  Tasks(),
                  Spacer(),
                  AddButton(myController: myController, addTask: _addTask)
                ],
              ),
              myText(myController: myController),
              myBox(
                height: myHeight.height(context),
              ),
              Expanded(
                child: isEmpty
                    ? emptyTasks()
                    : ListView.builder(
                        itemCount: _tasks.length,
                        itemBuilder: (context, index) {
                          final task = _tasks[index];
                          return Padding(
                            padding:  myPadding.btm,
                            child: Card(
                              margin: myPadding.card,
                              child: GestureDetector(
                                onTap: () {
                                  final _editController =
                                      TextEditingController(text: task['task']);
                                  myDialog(context, _editController, task, _fetchTasks);
                                },
                                child: Dismissible(
                                  background: deleteContainer(),
                                  key: ValueKey(task["id"]),
                                  confirmDismiss: (DismissDirection direction) async {
                                    // Show confirmation dialog and await user's decision
                                    return await deleteDialog(context, task);
                                  },
                                  onDismissed: (DismissDirection direction) {
                                    setState(() {
                                      _tasks.removeAt(index); // Remove task from list
                                    });
                                    _deleteTask(task["id"]);
                                  },
                                  child: Container(
                                    decoration:  containerBorder.myDecoration,
                                    child: MYlist(
                                      leading: completed(task),
                                      title: isCompleted(task: task),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Checkbox completed(task) {
    return Checkbox(
      value: task['isCompleted'],
      onChanged: (value) => _toggleTask(task['id'], task['isCompleted']),
    );
  }
}
