import 'package:flutter/material.dart';
import 'package:love_battery/body_part/body.dart';
import 'package:love_battery/bot_part/bot.dart';
import 'package:love_battery/provider/provider.dart';
import 'package:love_battery/top_part/top.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<dynamic>> isItFirstDate() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.getString('firstDay') ?? prefs.setString('firstDay', 'no Date');
  prefs.getInt('dDay') ?? prefs.setInt('dDay', 0);
  print(prefs.getString('firstDay'));
  print("D -${prefs.getInt('dDay')}");
  return [
    prefs.getString('firstDay')!,
    prefs.getInt('dDay'),
  ];
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: isItFirstDate(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            home: ChangeNotifierProvider(
              create: (context) => FirstDate(),
              child: Scaffold(
                body: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: TopPart(
                          firstDay: snapshot.data![0],
                          dDay: snapshot.data![1],
                        )),
                    Expanded(flex: 4, child: BodyPart()),
                    Expanded(flex: 1, child: BotPart()),
                  ],
                ),
              ),
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
