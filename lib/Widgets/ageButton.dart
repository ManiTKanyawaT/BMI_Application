import 'package:flutter/material.dart';
import '../Colors and Icons/colors.dart';

class AgeButton extends StatefulWidget {
  AgeButton({Key key}) : super(key: key);

  @override
  State<AgeButton> createState() => _AgeButtonState();
}

class _AgeButtonState extends State<AgeButton> {
  int ageNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
      width: 405,
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
                ageNumber++;
              });
            },
            icon: Icon(Icons.add),
          ),
          Text(
            ageNumber.toString(),
            style: kTextColorFont2,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                ageNumber--;
              });
            },
            icon: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
