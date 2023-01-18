import 'package:flutter/material.dart';
import '../Colors and Icons/colors.dart';
import 'heightDropDownButton.dart';
import '../SecondPage/input_page.dart';

class HeightIncrement extends StatefulWidget {
  const HeightIncrement({Key key}) : super(key: key);

  @override
  State<HeightIncrement> createState() => _HeightIncrementState();
}

class _HeightIncrementState extends State<HeightIncrement> {
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
                    heightNumber++;
                  });
                },
                icon: Icon(Icons.add),
              ),
              Text(
                heightNumber.toString(),
                style: kTextColorFont2,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    heightNumber--;
                  });
                },
                icon: Icon(Icons.remove),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: HeightDropdownButton(),
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
