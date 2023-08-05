import 'package:bmi_calculator_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  final VoidCallback onTap;
  final String title;

  const BottomButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: bottomContainerColor,
        height: bottomContainerHeight,
        padding: const EdgeInsets.only(bottom: 20),
        child: Center(
            child: Text(
              title.toUpperCase(),
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}