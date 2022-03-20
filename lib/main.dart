import 'package:flutter/material.dart';
import 'config/palette.dart';
import 'package:integer/screens/news_screen.dart';
import 'package:integer/screens/timesheet_screen.dart';
import 'package:integer/screens/vacations_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Integer',
      theme: ThemeData(
        primarySwatch: Palette.integerOrange,
      ),
      initialRoute: 'news',
      routes: {
        'news' : (context) => const NewsScreen(title: 'News'),
        'timeSheet' : (context) => const TimeSheetScreen(title: 'Horas'),
        'vacations' : (context) => const VacationsScreen(title: 'Férias'),
      }
    );
  }
}