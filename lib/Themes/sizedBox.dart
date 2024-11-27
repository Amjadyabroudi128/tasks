import 'package:flutter/material.dart';

class myBox extends StatelessWidget {
  final double? height;
  final double? width;
  const myBox({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
