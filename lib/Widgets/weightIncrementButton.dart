import 'package:flutter/material.dart';
import 'weightDropDownButton.dart';
import 'package:bmi_calculator/colors and Icons/colors.dart';
import '../SecondPage/input_page.dart';

class WeightIncrement extends StatefulWidget {
  const WeightIncrement({Key key}) : super(key: key);

  @override
  State<WeightIncrement> createState() => _WeightIncrementState();
}

class _WeightIncrementState extends State<WeightIncrement> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 5),
          width: 250,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: kNormalUsedColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    weightNumber++;
                  });
                },
                icon: Icon(Icons.add),
              ),
              Text(
                weightNumber.toString(),
                style: kTextColorFont2,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    weightNumber--;
                  });
                },
                icon: Icon(Icons.remove),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: WeightDropdownButton(),
          margin: EdgeInsets.only(
            top: 5,
            bottom: 5,
            left: 10,
          ),
          width: 140,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: kNormalUsedColor,
          ),
        )
      ],
    );
  }
}
