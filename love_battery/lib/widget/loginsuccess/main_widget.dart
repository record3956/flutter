import 'package:flutter/material.dart';
import 'package:love_battery/widget/loginsuccess/middle_part_widget.dart';
import 'package:love_battery/widget/loginsuccess/top_part_widget.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 1,
          child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blue,
              child: const TopPart()),
        ),
        Flexible(
          flex: 7,
          child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.red,
              child: const MidPart()),
        ),
      ],
    );
  }
}
