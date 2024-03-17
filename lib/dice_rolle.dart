import 'package:flutter/material.dart';
import 'dart:math';

// using rnadom gloabllt so that it only gets initialized once

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  var activeDiceImage = "assets/images/dice-2.png";
  int diceNumber = 1;
  void diceClick() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceNumber.png',
          width: 150,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: diceClick,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: const EdgeInsets.only(top: 10),
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          child: const Text(
            "Roll Dice",
          ),
        )
      ],
    );
  }
}
