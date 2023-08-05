
import 'dart:math';

class CalculatorService{

  final int height;
  final int weight;

  double _bmi=0;

  CalculatorService(this.height, this.weight);

  String calculateBMI(){
    double bmi = weight / pow(height/100, 2);
    _bmi = bmi;

    return bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi>18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'You have a higher than normal body weight. Get in the GYM!!!';
    }else if(_bmi>18.5){
      return 'Great job on keeping your body weight normal';
    }else{
      return 'You are underweight. Eat more';
    }
  }
}