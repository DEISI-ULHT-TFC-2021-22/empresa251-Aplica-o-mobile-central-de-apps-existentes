import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:integer/model/vacation.dart';
import 'package:integer/widgets/vacation/vacation_table.dart';


class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Vacation>>(
        future: fetchVacations(),
        builder: (context, future){
          if(!future.hasData) {
            return Container(); // Display empty container if the list is empty
          } else {
            return VacationTable(isLandscape: false, vacations:future.data);
          }
        }
    );
  }
}

Future<List<Vacation>> fetchVacations() async {
  final response = await http.get(Uri.parse('https://tfcapi.app.smartmock.io/vacations?userid=1'));
  List<Vacation> userVacations = [];
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    for(var vacation in data.values) {
      userVacations.add(Vacation.fromJson(vacation));
    }
    return userVacations;
  } else {
    throw Exception('Failed to get vacations');
  }
}