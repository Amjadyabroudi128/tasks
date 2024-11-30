import 'package:flutter/material.dart';
import 'package:tasks/Themes/colors.dart';

class deleteContainer extends StatelessWidget {
  const deleteContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorHelper.delete,
      child: Icon(Icons.delete, color: Colors.white,),
    );
  }
}
