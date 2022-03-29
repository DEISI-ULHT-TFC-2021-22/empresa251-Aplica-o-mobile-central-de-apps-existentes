import 'package:flutter/material.dart';
import 'package:integer/widgets/drawer/drawer.dart';
import 'package:integer/widgets/app_bar.dart';
import '../widgets/time_sheet/dropdown_widget.dart';
import '../config/months.dart';
import '../widgets/time_sheet/hour_box_widget.dart';

class TimeSheetScreen extends StatelessWidget {
  final String title;
  const TimeSheetScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavDrawer(),
        appBar: TopAppBar(title: title, titleColor: Colors.white),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Stack(
            children: [
              Positioned(
                right: 5,
                top: 50,
                child: DropDown(Months.months),
              ),
              Positioned(child: HourBox())
            ],
          ),
        ));
  }
}
