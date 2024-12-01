import 'package:flutter/material.dart';

class kTextBtn extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  const kTextBtn({super.key, required this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
