import 'package:flutter/material.dart';
import 'package:love_battery/function/main_function.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 5.0)),
            height: double.infinity,
          ),
        ),
        Flexible(
          flex: 4,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 5.0)),
            width: double.infinity,
            height: double.infinity,
            child: const Align(
              alignment: Alignment.center,
              child: Text('우리의 기록'),
            ),
          ),
        ),
        Flexible(
          flex: 4,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 5.0)),
            height: double.infinity,
            child: const ElevatedButton(
                // 구글 로그인 기능
                onPressed: signInWithGoogle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.run_circle_outlined),
                    Text('Sign in Google')
                  ],
                )),
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber, width: 5.0)),
              height: double.infinity),
        ),
      ],
    );
  }
}
