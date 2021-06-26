import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);
  final int height;
  final int weight;

  double _bmi = 0;

  String bmiCalculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Do Excersice';
    } else if (_bmi > 18.5) {
      return 'You are fit';
    } else {
      return 'Need to eat more';
    }
  }

  String getResult() {
    if (_bmi >= 25) {
      print(_bmi);
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      print(_bmi);
      return 'Normal';
    } else {
      print(_bmi);
      return 'UnderWeight';
    }

    
  }
}
