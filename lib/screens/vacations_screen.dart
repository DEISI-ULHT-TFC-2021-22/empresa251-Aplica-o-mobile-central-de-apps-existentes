import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';
import 'package:integer/widgets/drawer/drawer.dart';
import 'package:integer/widgets/app_bar.dart';
import 'package:integer/widgets/vacation/calendar.dart';
import 'package:integer/widgets/vacation/vacation_label_card.dart';

class VacationsScreen extends StatelessWidget {
  final String title;
  const VacationsScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: TopAppBar(title: title, titleColor: Colors.white),
      body: Column(
        children: <Widget>[
          const Expanded(
            flex: 2,
            child: VacationLabelCard(),
          ),
          const Divider(color: Palette.orange),
          Expanded(
            flex: 4,
            child: Calendar(),
          ),
        ],
      ),
    );
  }
}