import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';
import 'package:integer/widgets/drawer/drawer.dart';
import 'package:integer/widgets/app_bar.dart';
import 'package:integer/widgets/vacation/vacation_count.dart';
import 'package:integer/widgets/vacation/vacation_label.dart';
import 'package:integer/widgets/vacation/calendar.dart';

class VacationsScreen extends StatelessWidget {
  final String title;
  const VacationsScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: TopAppBar(title: title, titleColor: Colors.white),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      VacationCount(),
                    ],
                  ),
                ]
              ),
            ),
            const Divider(color: Palette.orange),
            Expanded(
              flex: 10,
              child: Calendar(),
            ),
            const Divider(color: Palette.orange),
            Expanded(
              flex: 1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        VacationLabel(),
                      ],
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}