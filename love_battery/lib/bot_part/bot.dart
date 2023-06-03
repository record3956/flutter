import 'package:flutter/material.dart';
import 'package:love_battery/provider/provider.dart';
import 'package:provider/provider.dart';

class BotPart extends StatelessWidget {
  const BotPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              Provider.of<FirstDate>(context, listen: false).resetDday();
            },
            child: Text('reset D-Day'))
      ],
    );
  }
}
