import 'package:first_app/diceroller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.cores, {super.key});
  final List<Color> cores;
  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: cores, begin: startAlignment, end: endAlignment)),
        child: const Center(
            child: DiceRoller()));
  }
}
