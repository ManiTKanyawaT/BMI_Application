import 'package:flutter/material.dart';

List<String> list = ['CM', 'Inches'];

class HeightDropdownButton extends StatefulWidget {
  @override
  State<HeightDropdownButton> createState() => _HeightDropdownButtonState();
}

class _HeightDropdownButtonState extends State<HeightDropdownButton> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownValue,
      style: const TextStyle(
          fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
      onChanged: (String value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
