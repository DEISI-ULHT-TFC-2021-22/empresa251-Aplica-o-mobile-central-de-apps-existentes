import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';
import 'package:integer/helper/demo_values.dart';

class VacationCount extends StatelessWidget {
  const VacationCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _VacationsDaysLabel(label: '22', color: Palette.orange),
          _VacationsDaysLabel(label: '10', color: Colors.green),
          _VacationsDaysLabel(label: '12', color: Colors.deepPurple),
        ]
      ),
    );
  }
}

class _VacationsDaysLabel extends StatelessWidget {
  final String label;
  final Color color;
  const _VacationsDaysLabel({Key? key, required this.label, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          children: <Widget>[
            Icon(
              Icons.square,
              color: color,
            ),
            Text(
              label,
            ),
          ]
      ),
    );
  }
}