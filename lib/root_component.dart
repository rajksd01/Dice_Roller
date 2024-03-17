import 'package:flutter/material.dart';
import 'package:basic_app/dice_rolle.dart';
//import 'package:basic_app/styled_text.dart';

class RootComponent extends StatelessWidget {
  const RootComponent({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.amber, Colors.cyan],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
