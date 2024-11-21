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



