import 'package:flutter/material.dart';

class Indicator_widget extends StatelessWidget {
  const Indicator_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.none,
          width: 60,
          height: 3,
          color: Color(0xff3BB77E),
        ),
        Container(
          width: 348,
          height: 1,
          color: Colors.grey,
        ),
      ],
    );
  }
}
