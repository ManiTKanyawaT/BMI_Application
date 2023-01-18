import 'package:bmi_calculator/SecondPage/input_page.dart';
import 'package:flutter/material.dart';
import '../Widgets/genderButton.dart';
import 'package:bmi_calculator/colors and Icons/colors.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.interpretation, this.bmiResult, this.resultText});

  final String interpretation;
  final String bmiResult;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF000002),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.notifications_active),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 5, right: 10, top: 20),
            child: Text(
              'Your Summary',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 120, bottom: 20),
            child: ReuseItem(
              cardChild: Column(
                children: [
                  Text(
                    'BMI score',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      bmiResult,
                      style: kTextResultPage1.copyWith(
                          color: Colors.greenAccent, fontSize: 120),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(resultText,
                        style: kTextResultPage2.copyWith(
                            fontSize: 17, fontWeight: FontWeight.normal)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      interpretation,
                      style: kTextResultPage2.copyWith(fontSize: 25),
                    ),
                  )
                ],
              ),
              colour: Colors.black,
            ),
          )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(),
                ),
              );
            },
            child: Text(
              'RE-CALCULATE',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
              minimumSize: MaterialStateProperty.all(
                Size(405, 70),
              ),
            ),
          )
        ],
      ),
    );
  }
}
