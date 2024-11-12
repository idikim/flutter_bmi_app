import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  const ResultText(this.result);

  final double result;

  String getResultText() {
    if (result >= 35) {
      // 35 이상
      return "EXTREMELY OBESE";
    } else if (result >= 30) {
      // 30 이상 35 미만
      return "OBESE";
    } else if (result >= 25) {
      // 25 이상 30 미만
      return "OVERWEIGHT";
    } else if (result >= 18.5) {
      // 18.5 이상 25 미만
      return "NORMAL";
    } else {
      // 18.5 미만
      return "UNDERWEIGHT";
    }
  }

  String getRangeText() {
    if (result >= 35) {
      // 35 이상
      return ">= 35";
    } else if (result >= 30) {
      // 30 이상 35 미만
      return "30.0-34.9";
    } else if (result >= 25) {
      // 25 이상 30 미만
      return "25.0—29.9";
    } else if (result >= 18.5) {
      // 18.5 이상 25 미만
      return "18.5—24.9";
    } else {
      // 18.5 미만
      return "< 18.5";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(fontSize: 18),
        children: [
          TextSpan(text: 'Result: '),
          TextSpan(
            text: getResultText(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).highlightColor,
            ),
          ),
          TextSpan(text: ' (BMI ${getRangeText()})'),
        ],
      ),
    );
  }
}
