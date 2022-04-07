import 'package:flutter/material.dart';
import 'package:integer/widgets/drawer/drawer.dart';
import 'package:integer/widgets/app_bar.dart';
import '../widgets/time_sheet/date_picker_widget.dart';
import '../widgets/time_sheet/dropdown_widget.dart';
import '../config/months.dart';
import '../widgets/time_sheet/hour_box_widget.dart';

class TimeSheetScreen extends StatefulWidget {
  final String title;
  const TimeSheetScreen({Key? key, required this.title}) : super(key: key);

  @override
  _TimeSheetScreen createState() => _TimeSheetScreen();
}

class _TimeSheetScreen extends State<TimeSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: TopAppBar(title: "Horas", titleColor: Colors.white),
      body: Column(
        children: const <Widget>[
          Expanded(
            flex: 2,
            child: DatePickerWidget(),
          ),
          Expanded(
            flex: 8,
            child: HourBox(),
          ),
        ],
      ),
    );
  }
}
