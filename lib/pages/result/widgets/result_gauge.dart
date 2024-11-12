import 'dart:math';

import 'package:flutter/material.dart';

class ResultGauge extends StatelessWidget {
  const ResultGauge(this.result);
  final double result;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // 가로 세로가 같은 SizedBox를 사용할 때
        SizedBox.square(
          dimension: 250,
          child: CircularProgressIndicator(
            value: 1,
            strokeWidth: 2,
            color: Theme.of(context).dividerColor,
          ),
        ),
        SizedBox.square(
          dimension: 250,
          child: CircularProgressIndicator(
            value: min((result / 35), 1), // BMI max 35!
            strokeWidth: 3,
            color: Theme.of(context).highlightColor,
          ),
        ),
        // Stack 의 크기가 자녀위젯의 크기에 따라 달라지므로 Center 사용 불가
        Text(
          result.toStringAsFixed(1),
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
