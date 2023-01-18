import 'dart:math';

class CalculateBMI {
  CalculateBMI({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Your are Overweight'.toUpperCase();
    } else if (_bmi > 18.5) {
      return 'You Are Totally fit'.toUpperCase();
    } else {
      return 'You are UNDERWEIGHT'.toUpperCase();
    }
  }

  String getResult2() {
    if (_bmi >= 25) {
      return 'Control Your Weight';
    } else if (_bmi > 18.5) {
      return 'Enjoy Your Meal';
    } else {
      return 'Eat More Food';
    }
  }
}
