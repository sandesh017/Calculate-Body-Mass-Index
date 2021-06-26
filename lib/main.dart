import 'package:flutter/material.dart';
import 'package:bmi/screens/input_page.dart';


void main() {
  runApp(
    BMIcalculator(),
  );
}

class BMIcalculator extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        accentColor: Colors.purple,
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
