import 'package:flutter/material.dart';

class TopPart extends StatelessWidget {
  const TopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.favorite,
          size: 50,
        ),
        Icon(
          Icons.hourglass_top_outlined,
          size: 50,
        ),
        Icon(
          Icons.people_alt,
          size: 50,
        ),
      ],
    );
  }
}
