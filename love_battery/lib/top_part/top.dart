import 'package:flutter/material.dart';

class TopPart extends StatefulWidget {
  const TopPart({super.key});

  @override
  State<TopPart> createState() => _TopPartState();
}

class _TopPartState extends State<TopPart> {
  // 입력값 존재 유무를 판단할 bool 변수 true 변경되게 할 것
  bool isFirstData = false;
  bool lastmeet = false;
  bool nextmeet = false;
  // 결과값인 dDay변수
  late int dDay;
  // 추후 입력값으로 저장될 firstSelectedDate3
  late DateTime? firstSelectedDate;
  late DateTime? lastMeetDate;

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
      });
    }
    return null;
  }

// input : 언제 만나는지 , 어디서 만나는지 , 무엇을 하는지
// return String<List>:[며칠 남았는지 , 어디서 만나는지 , 무엇을 하는지]
// 막힌 부분 : showDialog에서 왜 Row위젯에 TextField가 들어가면 에러가 나오는지?
  getNextMeet() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Column(
            children: const [
              Row(
                children: [
                  Text('When'),
                  TextField(),
                ],
              ),
              Row(
                children: [
                  Text('Where'),
                  TextField(),
                ],
              ),
              Row(
                children: [
                  Text('What'),
                  TextField(),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        isFirstData
            ? Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.purple[200]!.withOpacity(0.3),
                      size: 60,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Center(
                      child: Text('D+ $dDay'),
                    ),
                  ),
                ],
              )
            : GestureDetector(
                onTap: getFirstDay,
                child: Icon(Icons.question_mark),
              ),
        GestureDetector(
          onTap: getNextMeet,
          child: Text('Next meet'),
        ),
        Text('next meet'),
      ],
    );
  }
}
