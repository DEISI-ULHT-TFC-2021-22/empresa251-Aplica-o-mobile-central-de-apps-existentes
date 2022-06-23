import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';
import 'package:intl/intl.dart';

import '../../model/vacation.dart';

class VacationTable extends StatelessWidget {
  bool isLandscape = false;
  List<Vacation>? vacations;
  VacationTable({Key? key, required this.isLandscape, required this.vacations}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      child: Column(
        children: [
          Table(
              border: TableBorder.all(
                  color: Palette.orange, style: BorderStyle.none, width: 0.5),
              children: [
                TableRow(
                    decoration: const BoxDecoration(color: Palette.darkBlue, boxShadow: [
                      BoxShadow(
                          color: Palette.orange,
                          blurRadius: 1.0,
                          offset: Offset(0.0, 1.0))
                    ]),
                    children: [
                      Column(children: const [
                        Text('Início', style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white
                        ))
                      ]),
                      Column(children: const [
                        Text('Término', style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white
                        ))
                      ]),
                      Column(children: const [
                        Text('Período', style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white
                        ))
                      ]),
                      Column(children: const [
                        Text('Status', style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white
                        ))
                      ]),
                    ]),
                for (var vacation in vacations!)
                  TableRow(children: [
                    Column(children: [
                      const SizedBox(height: 20),
                      Text(DateFormat('dd/MM/yyyy').format(vacation.startDate).toString()),
                    ]),
                    Column(children: [
                      const SizedBox(height: 20),
                      Text(DateFormat('dd/MM/yyyy').format(vacation.endDate).toString())
                    ]),
                    Column(children: [
                      const SizedBox(height: 20),
                      Text(vacation.days.toString() + " dias")
                    ]),
                    Column(children: [
                      const SizedBox(height: 20),
                      Text(vacation.status,
                          style: TextStyle(
                              color: vacation.status == 'Aprovado' ? Palette.green : Palette.darkBlue))
                    ]),
                  ])
              ]),
        ],
      ),
    );
  }
}