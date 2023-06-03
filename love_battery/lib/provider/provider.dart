import 'package:flutter/material.dart';

class FirstDate with ChangeNotifier {
  String firstDay = '';

  resetDday() {
    firstDay = 'no Date';
    notifyListeners();
  }

  setFirstDay() {
    notifyListeners();
  }
}
