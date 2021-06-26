import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableColumn extends StatelessWidget {
  ReusableColumn(this.male, this.text);
  final IconData male;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          male,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
