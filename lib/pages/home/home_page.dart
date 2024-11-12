import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/pages/home/widgets/gender_box.dart';
import 'package:flutter_bmi_app/pages/home/widgets/slider_box.dart';
import 'package:flutter_bmi_app/pages/result/result_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  void onGenderChanged(bool male) {
    setState(() {
      isMale = male;
    });
  }

  double height = 173;
  void onHeightChanged(double h) {
    setState(() {
      height = h;
    });
  }

  double weight = 72;
  void onWeightChanged(double w) {
    setState(() {
      weight = w;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            GenderBox(isMale, onGenderChanged),
            Spacer(),
            SliderBox(
              label: 'HEIGHT',
              value: height,
              unit: 'cm',
              onChanged: onHeightChanged,
            ),
            Spacer(),
            SliderBox(
              label: 'WEIGHT',
              value: weight,
              unit: 'kg',
              onChanged: onWeightChanged,
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  final meterHeight = height / 100;
                  final result = weight / (meterHeight * meterHeight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ResultPage(result);
                      },
                    ),
                  );
                },
                child: Text("CALCULATE"),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
