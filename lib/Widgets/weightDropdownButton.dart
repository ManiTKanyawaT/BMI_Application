import 'package:flutter/material.dart';

List<String> list = ['KG', 'Pound'];

class WeightDropdownButton extends StatefulWidget {
  @override
  State<WeightDropdownButton> createState() => _WeightDropdownButtonState();
}

class _WeightDropdownButtonState extends State<WeightDropdownButton> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownValue,
      style: const TextStyle(
          fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
      onChanged: (String value) {
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
