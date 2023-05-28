import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exam/fish_model.dart';
import 'package:provider_exam/widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) {
              return FishModel(name: 'salmon', size: 'big', num: 23);
            },
          ),
          ChangeNotifierProvider(
            create: (context) {
              return seaFishModel(name: 'mon', size: 'big', num: 33);
            },
          ),
        ],
        child: FishOrder(),
      ),
    );
  }
}
