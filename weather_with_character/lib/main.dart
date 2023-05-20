import 'package:flutter/material.dart';
import 'package:weather_with_character/apiService/api_service.dart';

void main() {
  GetWeather().getTodaysWeather();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: const Text('weahter'),
      )),
    );
  }
}
