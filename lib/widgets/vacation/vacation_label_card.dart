import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';
import 'package:http/http.dart' as http;

import '../../model/vacations_summary.dart';

class VacationLabelCard extends StatelessWidget {
  const VacationLabelCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<VacationSummary>(
        future: fetchVacationSummary(),
        builder: (context, future){
          if(!future.hasData) {
            return Container(); // Display empty container if the list is empty
          } else {
            return Card(
              clipBehavior: Clip.antiAlias,
              color: Theme.of(context).scaffoldBackgroundColor,
              elevation: 0,
              child: Column(
                children: [
                  _CardListTile(label: "Total de dias de férias", color: Palette.orange, vacationDays: future.data?.daysTotal),
                  _CardListTile(label: "Dias de férias marcados", color: Palette.green, vacationDays: future.data?.daysUsed),
                  _CardListTile(label: "Dias de férias por marcar", color: Palette.darkBlue, vacationDays: future.data?.daysAvailable),
                ],
              ),
            );
          }
        }
    );
  }
}

class _CardListTile extends StatelessWidget {
  final String label;
  final Color color;
  final int? vacationDays;
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

Future<VacationSummary> fetchVacationSummary() async {
  final response = await http.get(Uri.parse('https://tfcapi.app.smartmock.io/vacations/summary?userid=1'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return VacationSummary.fromJson(data);
  } else {
    throw Exception('Failed to get vacations');
  }
}