import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.input, {super.key});

  final String input;

  @override
  Widget build(BuildContext context) {
    return Text(
      input,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
