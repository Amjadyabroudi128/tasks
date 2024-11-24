import 'package:flutter/material.dart';
import 'package:tasks/features/home/widgets/addButton.dart';
import 'package:tasks/features/home/widgets/tasksText.dart';
import 'package:tasks/features/home/widgets/text.dart';
import 'package:tasks/supabase/CRUD.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
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

  Future<void> _editTask(int id, String updatedTask) async {
    await _mySupabase.editTask(id, updatedTask);
    _fetchTasks(); // Refresh the task list
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 30, left: 20, right: 20),
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
            SizedBox(height: 16),
            // Task List
            Expanded(
              child: isEmpty ? Center(
                child: Text("Please Add Some Tasks :)", style: TextStyle(fontSize: 24),),
              ) : ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index) {
                  final task = _tasks[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: ListTile(
                      leading: Checkbox(
                        value: task['isCompleted'],
                        onChanged: (value) => _toggleTask(task['id'], task['isCompleted']),
                      ),
                      title: Text(
                        task['task'],
                        style: TextStyle(
                          decoration: task['isCompleted'] ? TextDecoration.lineThrough : null,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit, color: Colors.blue),
                            onPressed: () {
                              final _editController = TextEditingController(text: task['task']);
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Edit Task'),
                                  content: TextField(
                                    controller: _editController,
                                    decoration: InputDecoration(hintText: 'Update task'),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        _editTask(task['id'], _editController.text);
                                        Navigator.pop(context);
                                      },
                                      child: Text('Save'),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () => _deleteTask(task['id']),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
