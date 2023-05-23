import 'package:flutter/material.dart';

// Dialog 내부 Row영역을 통일하고 커스텀하기 위한 위젯
class DialogRow extends StatefulWidget {
  final TextEditingController? controller;
  final String text, hint;
  final Widget? icon;
  const DialogRow({
    super.key,
    this.controller,
    required this.text,
    required this.hint,
    this.icon,
  });

  @override
  State<DialogRow> createState() => _DialogRowState();
}

class _DialogRowState extends State<DialogRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 63,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  widget.text,
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                controller: widget.controller,
                decoration: InputDecoration(
                  labelText: widget.hint,
                  suffixIcon: widget.icon,
                  border: OutlineInputBorder(),
                ),
              ),
            )),
          ],
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

// SameSizedBox 100*100 사이즈 박스 내부 위젯 커스텀을 위한 위젯
class SameSizedBox extends StatelessWidget {
  final Widget child;

  SameSizedBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      height: 100,
      child: child,
    );
  }
}
