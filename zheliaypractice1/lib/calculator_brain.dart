// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorBrain {
  double _bmi = 0.0;

  CalculatorBrain(int height, int weight);

  String calculateBMI({required int height, required int weight}) {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getReslults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Overweight, eat healthy and excersize';
    } else if (_bmi > 18.5) {
      return 'good, but excersize';
    } else {
      return 'eat more and excersize';
    }
  }
}
