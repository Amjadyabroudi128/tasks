import 'package:flutter/material.dart';
import '../../../Themes/icons.dart';
class AddButton extends StatefulWidget {
  final TextEditingController myController;
  final Function(String) addTask;

  const AddButton({
    Key? key,
    required this.myController,
    required this.addTask,
  }) : super(key: key);

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        widget.addTask(widget.myController.text);
      },
      icon: myIcons.addIcon,
    );
  }
}
