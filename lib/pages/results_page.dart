import 'package:bmi_calculator_flutter/custom_widgets/bottom_buttom.dart';
import 'package:bmi_calculator_flutter/custom_widgets/reusable_card.dart';
import 'package:bmi_calculator_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'.toUpperCase()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: titleTextStyle,
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                color: activeCardColor,
                onPress: () {},
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Normal',
                      style: resultTextStyle,
                    ),
                    Text(
                      '20.3',
                      style: bmiTextStyle,
                    ),
                    Text(
                      'Your BMI is Low',
                      style: bodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )),
          BottomButton(onTap: () {
            Navigator.pop(context);
          }, title: 'Re-calculate')
        ],
      ),
    );
  }
}
