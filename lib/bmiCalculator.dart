import 'dart:math';

class BMICalculator{
  int weight;
  int height;
  BMICalculator(this.weight, this.height);
  late double bmi;
  String calculateBMI(){
    bmi = weight / pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }
  String getResult(){
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if (bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more';
    } else if (bmi >= 18.5) {
      return 'You have normal body weight. Great job!';
    } else {
      return 'You have lower than normal body weight. Try increasing your diet';
    }
  }

}