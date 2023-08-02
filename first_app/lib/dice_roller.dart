import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var updatediceroll = 1;

  void diceroll() {
    setState(() {
      updatediceroll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$updatediceroll.png',
          width: 200,
          height: 200,
        ),
        TextButton(
          onPressed: diceroll,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                top: 13,
              ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
          child: const Text("ROLL DICE!"),
        )
      ],
    );
  }
}
