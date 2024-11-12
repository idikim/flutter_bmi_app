import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/pages/result/widgets/result_gauge.dart';
import 'package:flutter_bmi_app/pages/result/widgets/result_text.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(this.result);

  final double result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Spacer(),
            ResultGauge(result),
            SizedBox(height: 50),
            ResultText(result),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('RECALCULATE'),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
