import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../refactoredMethods.dart';
import '../components/reusableContainer.dart';


class ResultPage extends StatelessWidget {
  String resultText;
  String interpretation;
  String bmiResult;

  ResultPage(this.bmiResult, this.resultText,this.interpretation, );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                height: 200,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Your Result',
                    style: kTitleTextStyle(),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableContainer(
                activeContainerColour,
                50,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText,
                    style: kResultTextStyle(),),
                    Text(bmiResult,
                    style: kBMITextStyle(),),
                    Text(interpretation,
                    style: kLabelTextStyle(),
                    textAlign: TextAlign.center,)

                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                // margin: EdgeInsets.only(top: 10),
                color: Color(0xFFEB1555),
                width: double.infinity,
                height: 43.428,
                // margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'RECALCULATE',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
