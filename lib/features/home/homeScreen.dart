import 'package:flutter/material.dart';
import 'package:tasks/features/home/widgets/addButton.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Row(
                children: [
                  Text("Tasks", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
                  ),
                  ),
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

