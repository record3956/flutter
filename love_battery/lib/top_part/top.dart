import 'package:flutter/material.dart';
import 'package:love_battery/top_part/top_part_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TopPart extends StatefulWidget {
  const TopPart({super.key});

  @override
  State<TopPart> createState() => _TopPartState();
}

class _TopPartState extends State<TopPart> {
  // sharedPreference 패키지를 이용한 디스크 접근 변수
  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  // 1.getFirstDay 함수에 사용될 변수 선언
  // 처음 만난 날로 사용될 firstDay
  // 결과값인 dDay변수
  late String firstDay;
  late int dDay;
  // 2.getNextMeet 함수에 사용될 변수 선언
  // textField 조작을 위한 컨트롤러
  // textField에 반환될 값
  // 완료 후 나타낼 값.
  late TextEditingController nextMeetController;
  late TextEditingController nextMeetWhereController;
  late TextEditingController nextMeetWhatController;
  late DateTime? nextMeetSelected;
  late String nextMeetToString;
  late int nextDday;
  bool isNextDialog = false;
// 데이터 저장값 유무를 확인하는 함수

  isItInfo() async {
    final SharedPreferences prefs = await _pref;
    prefs.getString('firstDay');
  }

  @override
  void initState() {
    nextMeetController = TextEditingController();
    nextMeetWhereController = TextEditingController();
    nextMeetWhatController = TextEditingController();
    super.initState();
  }

  // 입력 날짜를 기준으로 며칠 만났는지를 반환하고 디스크에 값을 저장하는 함수
  getFristDay() async {
    DateTime? selectedFirstDay = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    final SharedPreferences prefs = await _pref;
    if (selectedFirstDay != null) {
      setState(() {
        firstDay =
            '${selectedFirstDay.year}-${selectedFirstDay.month}-${selectedFirstDay.day}-';
        // firstDay값을 메모리에 "firstDay" 키 값으로 저장한다.
        prefs.setString('firstDay', firstDay);
      });
    }
  }

  //
  getNextMeetInfo() async {
    nextMeetSelected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2024),
    );
    if (nextMeetSelected != null) {
      nextMeetToString =
          "${nextMeetSelected!.year} - ${nextMeetSelected!.month} - ${nextMeetSelected!.day}";
      nextDday = DateTime.now().difference(nextMeetSelected!).inDays - 1;

      setState(() {
        nextMeetController.text = nextMeetToString;
      });
    }
  }

  getNextMeet() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            height: 550,
            child: Scaffold(
              appBar: AppBar(
                title: Text('다음 약속 정하기'),
              ),
              body: SizedBox(
                child: Form(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      DialogRow(
                        controller: nextMeetController,
                        hint: '언제 만나나요?',
                        text: 'When',
                        icon: ElevatedButton(
                          onPressed: getNextMeetInfo,
                          child: Icon(Icons.calendar_month),
                        ),
                      ),
                      DialogRow(
                        controller: nextMeetWhereController,
                        hint: "어디서 만나나요?",
                        text: "Where?",
                        icon: Icon(Icons.map_outlined),
                      ),
                      DialogRow(
                        controller: nextMeetWhatController,
                        hint: "무엇을 할껀가요?",
                        text: "What?",
                        icon: Icon(Icons.psychology_alt_outlined),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            nextMeetWhereController.text;
                            nextMeetWhatController.text;
                            nextDday;
                            isNextDialog = !isNextDialog;
                          });
                          Navigator.pop(context);
                        },
                        child: Text('등록'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        (firstDay == 'no Date')
            ? Stack(
                alignment: Alignment.center,
                children: [
                  SameSizedBox(
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: SameSizedBox(
                                child: Text('since $firstDay ~ing')),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.favorite,
                        color: Colors.purple[200]!.withOpacity(0.3),
                        size: 100,
                      ),
                    ),
                  ),
                  SameSizedBox(
                    child: Center(
                      child: Text('D+ $dDay'),
                    ),
                  ),
                ],
              )
            : SameSizedBox(
                child: GestureDetector(
                  onTap: getFristDay,
                  child: Icon(Icons.question_mark),
                ),
              ),
        isNextDialog
            ? Stack(
                children: [
                  SameSizedBox(
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: SizedBox(
                              height: 200,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RowInColumn(
                                    stringOne: 'when',
                                    stringTwo: nextMeetToString,
                                  ),
                                  RowInColumn(
                                    stringOne: 'where',
                                    stringTwo: nextMeetWhereController.text,
                                  ),
                                  RowInColumn(
                                    stringOne: 'what',
                                    stringTwo: nextMeetWhatController.text,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.purple[200]!.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                  ),
                  SameSizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Next Meet'),
                        Text("D$nextDday"),
                      ],
                    ),
                  ),
                ],
              )
            : SameSizedBox(
                child: GestureDetector(
                  onTap: getNextMeet,
                  child: Text('Next meet'),
                ),
              ),
        SameSizedBox(
          child: Text('bye'),
        ),
      ],
    );
  }
}

class RowInColumn extends StatelessWidget {
  final String stringOne;
  final String stringTwo;
  const RowInColumn({
    super.key,
    required this.stringOne,
    required this.stringTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 60, child: Text(stringOne)),
            Expanded(
                child:
                    Align(alignment: Alignment.center, child: Text(stringTwo))),
          ],
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
