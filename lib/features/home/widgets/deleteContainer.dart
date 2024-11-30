import 'package:flutter/material.dart';

class deleteContainer extends StatelessWidget {
  const deleteContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Icon(Icons.delete, color: Colors.white,),
    );
  }
}
