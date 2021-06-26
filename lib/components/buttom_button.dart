import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton(this.inputString, this.onTap);
  final VoidCallback onTap;
  final String inputString;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(inputString, style: kLargeButtonText),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        color: kBottomContainerColour,
      ),
    );
  }
}
