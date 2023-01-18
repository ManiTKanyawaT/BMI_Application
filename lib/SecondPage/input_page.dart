import 'package:flutter/material.dart';
import 'package:bmi_calculator/colors and Icons/colors.dart';
import '../Widgets/heightIncrementButton.dart';
import '../Widgets/ageButton.dart';
import '../Widgets/genderButton.dart';
import '../Widgets/weightIncrementButton.dart';
import '../SecondPage/resultPage.dart';
import '../Widgets/calculateBmi.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum GenderType { MaleGender, FemaleGender }

int weightNumber = 60;
int heightNumber = 170;

class _InputPageState extends State<InputPage> {
  GenderType gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF000002),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(Icons.menu),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.notifications_active),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 20, bottom: 10, left: 10),
            child: Text(
              'Gender',
              style: TextStyle(
                color: kNormalUsedColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ReuseItem(
                  onTap: () {
                    setState(() {
                      gender = GenderType.MaleGender;
                    });
                  },
                  colour: gender == GenderType.MaleGender
                      ? kActiveColor
                      : kNotActiveColor,
                  cardChild: IconCustom(
                    icon: Icons.man,
                    message: 'Male',
                  ),
                ),
              ),
              Expanded(
                child: ReuseItem(
                  onTap: () {
                    setState(() {
                      gender = GenderType.FemaleGender;
                    });
                  },
                  colour: gender == GenderType.FemaleGender
                      ? kActiveColor
                      : kNotActiveColor,
                  cardChild: IconCustom(
                    icon: Icons.woman,
                    message: 'Female',
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
            alignment: Alignment.topLeft,
            child: Text(
              'Height',
              style: TextStyle(
                color: kNormalUsedColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [HeightIncrement()],
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 10, left: 10),
            alignment: Alignment.topLeft,
            child: Text(
              'Weight',
              style: TextStyle(
                color: kNormalUsedColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              WeightIncrement(),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 10, left: 10),
            alignment: Alignment.topLeft,
            child: Text(
              'Age',
              style: TextStyle(
                color: kNormalUsedColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          AgeButton(),
          SizedBox(
            height: 60,
          ),
          ElevatedButton(
            onPressed: () {
              CalculateBMI cal =
                  CalculateBMI(height: heightNumber, weight: weightNumber);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: cal.calculateBMI(),
                    resultText: cal.getResult2(),
                    interpretation: cal.getResult(),
                  ),
                ),
              );
            },
            child: Text(
              'CALCULATE',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
              minimumSize: MaterialStateProperty.all(
                Size(405, 55),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IconCustom extends StatelessWidget {
  IconCustom({this.icon, this.message});

  final IconData icon;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 150,
          color: kNormalUsedColor,
        ),
        SizedBox(
          height: 10,
          width: 0,
        ),
        Text(
          message,
          style: kTextColorFont1,
        )
      ],
    );
  }
}
