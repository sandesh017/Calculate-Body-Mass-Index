import 'package:bmi/components/custom_icon.dart';
import 'package:bmi/screens/resultPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reuseacleCard.dart';
import '../constants.dart';
import 'package:bmi/components/buttom_button.dart';
import 'package:bmi/components/icon_content.dart';

import 'package:bmi/bmi_brain.dart';

enum Gender {
  male,
  female,
  select,
}

class InputPage extends StatefulWidget {
  @override
  _InputPage createState() => _InputPage();
}

class _InputPage extends State<InputPage> {
  Gender selectedGender = Gender.select;

  int height = 180;
  int weight = 60;
  int age = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI Calculator')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                      selectedGender == Gender.male
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      ReusableColumn(FontAwesomeIcons.mars, 'MALE'),
                      //Next Parameter function Added onPressed type.
                      () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  }),
                ),
                Expanded(
                  child: ReuseableCard(
                      selectedGender == Gender.female
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      ReusableColumn(FontAwesomeIcons.venus, 'FEMALE'),
                      //OnPressed function i.e onPress:(){}
                      () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  }),
                ),
              ],
            )),
            Expanded(
              child: ReuseableCard(
                  kActiveCardColour,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(), style: kNumberTextStyle),
                          Text('cm', style: kLabelTextStyle)
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 250.0,
                          inactiveColor: Color(0xFF8D8E98),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ),
                    ],
                  ), () {
                setState(() {
                  selectedGender = Gender.male;
                });
              }),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                      kActiveCardColour,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT', style: kLabelTextStyle),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomIconButton(FontAwesomeIcons.minus, () {
                                setState(() {
                                  weight--;
                                });
                              }),
                              SizedBox(width: 15.0),
                              CustomIconButton(FontAwesomeIcons.plus, () {
                                setState(() {
                                  weight++;
                                });
                              }),
                            ],
                          ),
                        ],
                      ), () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  }),
                ),
                Expanded(
                  child: ReuseableCard(
                      kActiveCardColour,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Age', style: kLabelTextStyle),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomIconButton(FontAwesomeIcons.minus, () {
                                setState(() {
                                  age--;
                                });
                              }),
                              SizedBox(width: 15.0),
                              CustomIconButton(FontAwesomeIcons.plus, () {
                                setState(() {
                                  age++;
                                });
                              }),
                            ],
                          ),
                        ],
                      ), () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  }),
                ),
              ],
            )),
            ButtomButton(
              'CALCULATE',
              () {
                CalculatorBrain calc = CalculatorBrain(height, weight);

                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(calc.bmiCalculate(), calc.getResult(),
                      calc.getInterpretation()),));
              },
            ),
          ],
        ));
  }
}
