import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 2;
  final randomico = Random();

  void rollDice() {
    setState(() {
      activeDiceImage = randomico.nextInt(6) + 1;
    });
    
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset('assets/dice-$activeDiceImage.png', width: 200),
      const SizedBox(height: 20),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 20, right: 20)),
          onPressed: rollDice,
          child: const Text('Roll Dice'))
    ]);
  }
}
