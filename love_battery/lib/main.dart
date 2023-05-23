import 'package:flutter/material.dart';
import 'package:love_battery/body_part/body.dart';
import 'package:love_battery/bot_part/bot.dart';
import 'package:love_battery/top_part/top.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          Expanded(flex: 2, child: TopPart()),
          Expanded(flex: 4, child: BodyPart()),
          Expanded(flex: 1, child: BotPart()),
        ],
      ),
    ));
  }
}
