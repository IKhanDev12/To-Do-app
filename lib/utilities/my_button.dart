import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  final Color color;

  MyButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.color
      });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      child: Text(text),
    );
  }
}
