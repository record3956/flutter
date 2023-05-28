import 'package:flutter/material.dart';

class FishModel with ChangeNotifier {
  final String name, size;
  late int num;

  FishModel({required this.name, required this.size, required this.num});

  increse() {
    num++;
    notifyListeners();
  }
}

class seaFishModel with ChangeNotifier {
  final String name, size;
  late int num;

  seaFishModel({required this.name, required this.size, required this.num});

  increse() {
    num++;
    notifyListeners();
  }
}
