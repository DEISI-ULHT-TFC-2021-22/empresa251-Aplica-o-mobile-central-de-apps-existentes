import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:integer/config/palette.dart';
import 'package:integer/helper/demo_values.dart';

final List _vacations = DemoValues.vacations;

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

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
                color: Palette.orange,
                style: BorderStyle.none,
                width: 0.5),
            children: [
              TableRow( children: [
                Column(
                  children:const [
                    Text('Início', style: TextStyle(fontSize: 16.0))
                  ]
                ),
                Column(
                    children:const [
                      Text('Término', style: TextStyle(fontSize: 16.0))
                    ]
                ),
                Column(
                    children:const [
                      Text('Período', style: TextStyle(fontSize: 16.0))
                    ]
                ),
                Column(
                    children:const [
                      Text('Status', style: TextStyle(fontSize: 16.0))
                    ]
                ),
              ]),
              for (var vacation in _vacations) TableRow(children: [
                Column(children: [Text(
                  DateFormat('dd/MM/yyyy').format(vacation['start']).toString())
                ]),
                Column(children: [Text(
                  DateFormat('dd/MM/yyyy').format(vacation['end']).toString())
                ]),
                Column(children: [Text(
                  vacation['duration'])
                ]),
                Column(children: [Text(
                  vacation['status'],
                  style: TextStyle(
                    color: vacation['status'] == 'Aprovado' ? Palette.green : Palette.darkBlue
                  )
                )
                ]),
              ])
            ]
          ),
        ],
      ),
    );
  }
}
