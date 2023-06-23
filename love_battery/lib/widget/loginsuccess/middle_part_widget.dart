import 'package:flutter/material.dart';
import 'package:love_battery/function/main_function.dart';

class MidPart extends StatelessWidget {
  const MidPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.amber),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                Colors.green[200],
              )),
              onPressed: signInWithGoogle,
              child: const Row(
                children: [Text('sign in google'), Icon(Icons.login_outlined)],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadiusDirectional.vertical(),
              border: Border.all(color: Colors.blue, width: 2.0),
            ),
            width: 50,
            height: 300,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.settings,
                  size: 50,
                ),
                Icon(
                  Icons.refresh_sharp,
                  size: 50,
                ),
                Icon(
                  Icons.calendar_month_outlined,
                  size: 50,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
