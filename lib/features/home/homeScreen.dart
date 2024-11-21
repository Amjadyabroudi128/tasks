import 'package:flutter/material.dart';
import 'package:tasks/features/home/widgets/addButton.dart';
import 'package:tasks/features/home/widgets/tasksText.dart';
import 'package:tasks/supabase/CRUD.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController myController = TextEditingController();
  final mySupabase DB = mySupabase();
  List<dynamic> myTasks = [];

  Future<void> fetch() async {
    final tasks = await DB.getTasks();
    setState(() {
      myTasks = tasks;
    });
  }
  Future<void> addTask(String taskName)async {
    await DB.addTask(taskName);
    myController.clear();
    fetch();
  }
  Future<void> _toggleTask(int id, bool isCompleted) async {
    await DB.toggleTask(id, isCompleted);
    fetch(); // Refresh the task list
  }

  Future<void> _deleteTask(int id) async {
    await DB.deleteTask(id);
    fetch(); // Refresh the task list
  }

  Future<void> _editTask(int id, String updatedTask) async {
    await DB.editTask(id, updatedTask);
    fetch(); // Refresh the task list
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Row(
                children: [
                  Tasks(),
                  Spacer(),
                  addButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



