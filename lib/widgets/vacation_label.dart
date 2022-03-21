import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';

class VacationLabel extends StatelessWidget {
  const VacationLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _VacationsDaysLabel(label: 'Total', color: Palette.orange),
            _VacationsDaysLabel(label: 'Marcadas', color: Colors.green),
            _VacationsDaysLabel(label: 'Por marcar', color: Colors.deepPurple),
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