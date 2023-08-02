import 'package:bmi_calculator_flutter/pages/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF0A0E21),
          secondary: Colors.purple,
        ),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white))
      ),
      home: InputPage(),

    );
  }
}


