import 'package:flutter/material.dart';
import 'package:integer/widgets/drawer/drawer.dart';
import 'package:integer/widgets/app_bar.dart';

class TimeSheetScreen extends StatelessWidget {
  final String title;
  const TimeSheetScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: TopAppBar(title: title, titleColor: Colors.white),
      body: const Center(
        child: Text('Horas'),
      ),
    );
  }
}