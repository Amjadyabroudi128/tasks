import 'package:flutter/material.dart';

class addButton extends StatefulWidget {
  const addButton({
    super.key,
  });

  @override
  State<addButton> createState() => _addButtonState();
}

class _addButtonState extends State<addButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () { },
      icon: Icon(Icons.add, size: 32,),
    );
  }
}