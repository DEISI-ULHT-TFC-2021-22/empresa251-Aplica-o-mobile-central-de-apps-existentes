import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:integer/config/months.dart';
import 'package:integer/config/palette.dart';
import 'package:intl/intl.dart';

import '../../model/timesheet.dart';
import '../../model/userinfo.dart';

class HourBox extends StatefulWidget {
  final int? counter;
  const HourBox({Key? key, required this.counter}) : super(key: key);

  @override
  _HourBox createState() => _HourBox();
}

class _HourBox extends State<HourBox> {
  int? index;
  Timesheet? timesheet;

  _rebuild() async {
    setState(() => index = Months.days[Months.month]);
    timesheet = await fetchHours();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _rebuild(),
      builder: (
        BuildContext context,
        AsyncSnapshot<dynamic> snapshot) {
          if (timesheet != null) {
            return Wrap(
              children: List.generate(index!, (index) {
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Column(children: [
                    const SizedBox(
                    height: 25,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 50,
                    decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(
                        timesheet!.hoursByDay(index + 1).toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                            color: timesheet!.hoursByDay(index + 1) != 8 ? Palette.orange : Palette.green
                        ),
                      ),
                    ),
                  ),
                  Text((index + 1).toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15
                    )
                  ),
              ])
            );
          }),
        );
      } else {
        return Container();
      }
    }
// other arguments
    );
  }
}

Future<Timesheet?> fetchHours() async {
  final response = await http.get(Uri.parse('https://tfcapi.app.smartmock.io/timesheet?year=' + DateFormat('yyyy').format(Months.date) + '&&month=' + DateFormat('MM').format(Months.date) + '&&userid=' + Userinfo.user!.userid.toString()));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return Timesheet.fromJson(data);
  } else {
    return null;
  }
}