import 'package:bmi/components/buttom_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reuseacleCard.dart';

class ResultPage extends StatelessWidget {
  ResultPage( this.bmiCalculate,this.result, this.interpretation);
  
  final String bmiCalculate;
  final String result;
  final String interpretation;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Text('RESULT', style: kTitleText),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                  kActiveCardColour,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(result, style: kResultTextStyle),
                      Text(bmiCalculate, style: kMBITextStyle),
                      Text(
                          interpretation,
                          textAlign: TextAlign.center,
                          style: kBodyTextStyle),
                    ],
                  ),
                  () {}),
            ),
            ButtomButton(
              'RE-CALCULATE',
              () {
                Navigator.pop(
                  (context),
                  
                );
              },
            ),
          ],
        ));
  }
}
