import 'package:flutter/material.dart';
import 'package:tasks/features/home/widgets/addButton.dart';
import 'package:tasks/features/home/widgets/tasksText.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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



