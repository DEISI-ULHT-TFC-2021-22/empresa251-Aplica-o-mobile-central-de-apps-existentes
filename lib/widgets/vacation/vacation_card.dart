import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';

class VacationCard extends StatelessWidget {
  const VacationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Expanded(
          flex: 1,
          child: _SingleCard(label: 'Total', color: Palette.orange, vacationDays: 22),
        ),
        Expanded(
          flex: 1,
          child: _SingleCard(label: 'Marcadas', color: Palette.green, vacationDays: 10),
        ),
        Expanded(
          flex: 1,
          child: _SingleCard(label: 'Por marcar', color: Colors.deepPurple, vacationDays: 12),
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final String label;
  final Color color;
  final int vacationDays;
  const _SingleCard({Key? key, required this.color, required this.label, required this.vacationDays}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card (
      margin: EdgeInsets.all(12),
      color: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon (
              Icons.circle,
              color: color,
              size: 45
            ),
            title: Text(
              label,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            trailing: Text(
              vacationDays.toString(),
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}