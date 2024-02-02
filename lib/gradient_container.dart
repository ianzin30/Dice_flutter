import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.red.withGreen(70), Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: const Center(
        child: Text(
          "Ronaldinho Gaucho",
          style: TextStyle(
              fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
