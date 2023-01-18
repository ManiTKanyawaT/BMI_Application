import 'package:flutter/material.dart';
import 'SecondPage/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xFF000002),
          scaffoldBackgroundColor: Color(0xFF000002)),
      home: InputPage(),
    );
  }
}
