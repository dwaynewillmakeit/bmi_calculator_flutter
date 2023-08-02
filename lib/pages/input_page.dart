import 'package:bmi_calculator_flutter/custom_widgets/icon_content.dart';
import 'package:bmi_calculator_flutter/custom_widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const int activeCardColor = 0xFF1D1E33;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(activeCardColor),
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(activeCardColor),
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(activeCardColor)),
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: Color(activeCardColor)),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(activeCardColor),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}



