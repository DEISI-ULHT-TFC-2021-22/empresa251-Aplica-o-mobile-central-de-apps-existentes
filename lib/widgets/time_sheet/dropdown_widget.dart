import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:integer/config/months.dart';

class DropDown extends StatelessWidget {
  final List<String> items;

  const DropDown(this.items, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 200,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
              icon: Icon(Icons.arrow_drop_down, color: Colors.black),
              value: Months.month,
              iconSize: 36,
              items: items.map(buildMenuItem).toList(),
              onChanged: (value) => setState(value!)),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );

  setState(String value) {
    Months.month = value;
    print(Months.month);
  }
}
