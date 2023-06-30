import 'dart:async';

import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

void main() {
  runApp(ModalHudExam());
}

class ModalHudExam extends StatefulWidget {
  const ModalHudExam({super.key});

  @override
  State<ModalHudExam> createState() => _ModalHudExamState();
}

class _ModalHudExamState extends State<ModalHudExam> {
  // 비동기
  bool isAsyncCalls = false;
  // 비동기 호출을 진행할 메서드 3초의 대기 후에 setState 및 print가 출력된다.
  Future<void> chgState() async {
    await Future.delayed(Duration(seconds: 3), () {
      print('hello');
    });
    setState(() {
      isAsyncCalls = !isAsyncCalls;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ModalProgressHUD"),
        ),
        // ModalProgressHud 위젯
        body: ModalProgressHUD(
          // bool타입의 변수를 입력받는 아규먼트 isAsyncall
          inAsyncCall: isAsyncCalls,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: chgState,
                child: Text('start Modal Progress HUD'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
