import 'package:flutter/material.dart';
import 'package:love_battery/top_part/top_part_widget.dart';

class TopPart extends StatefulWidget {
  const TopPart({super.key});

  @override
  State<TopPart> createState() => _TopPartState();
}

class _TopPartState extends State<TopPart> {
  // 1.getFirstDay 함수에 사용될 변수 선언
  // 추후 입력값으로 저장될 firstSelectedDate3
  // 입력값 존재 유무를 판단할 bool 변수 true 변경되게 할 것
  // 결과값인 dDay변수
  late DateTime? firstSelectedDate;
  late String firstMeetToString;
  bool isFirstData = false;
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

  @override
  void initState() {
    nextMeetController = TextEditingController();
    nextMeetWhereController = TextEditingController();
    nextMeetWhatController = TextEditingController();
    super.initState();
  }

  // 입력 날짜를 기준으로 며칠 만났는지를 반환하는 함수
  Future<int?> getFirstDay() async {
    firstSelectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (firstSelectedDate != null) {
      setState(() {
        isFirstData = !isFirstData;
        dDay = DateTime.now().difference(firstSelectedDate!).inDays + 1;
        firstMeetToString =
            '${firstSelectedDate!.year} - ${firstSelectedDate!.month} - ${firstSelectedDate!.day}';
      });
    }
    return null;
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
        isFirstData
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
                                child: Text('since $firstMeetToString ~ing')),
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
                  onTap: getFirstDay,
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
