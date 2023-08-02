import 'package:flutter/material.dart';
import 'package:first_app/style_text.dart';
import 'package:first_app/dice_roller.dart';

//vaiables assign
const beginalign = Alignment.topLeft;
const endalign = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: colors,
        begin: beginalign,
        end: endalign,
      )),
      child: const Center(
        child: DiceRoller(),
        // const StyleText("Hello, Ayush! \nWelcome to Flutter"),
      ),
    );
  }
}
