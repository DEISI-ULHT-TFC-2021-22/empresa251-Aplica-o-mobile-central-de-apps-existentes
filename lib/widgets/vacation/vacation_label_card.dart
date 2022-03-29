import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';

class VacationLabelCard extends StatelessWidget {
  const VacationLabelCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      child: Column(
        children: const [
          _CardListTile(label: "Total de dias de férias", color: Palette.orange, vacationDays: 22),
          _CardListTile(label: "Dias de férias marcados", color: Palette.green, vacationDays: 10),
          _CardListTile(label: "Dias de férias por marcar", color: Palette.darkBlue, vacationDays: 12),
        ],
      ),
    );
  }
}

class _CardListTile extends StatelessWidget {
  final String label;
  final Color color;
  final int vacationDays;
  const _CardListTile({Key? key, required this.color, required this.label, required this.vacationDays}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.square,
        color: color,
      ),
      title: Text(label),
      trailing: Text(
        vacationDays.toString(),
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }

}