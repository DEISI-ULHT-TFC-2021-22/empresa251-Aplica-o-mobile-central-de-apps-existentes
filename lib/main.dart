import 'package:flutter/material.dart';
import 'package:integer/widgets/time_sheet/notifier.dart';
import 'package:provider/provider.dart';
import 'config/palette.dart';
import 'package:integer/screens/list_news_screen.dart';
import 'package:integer/screens/timesheet_screen.dart';
import 'package:integer/screens/vacations_screen.dart';
import 'package:integer/screens/single_news_screen.dart';
import 'package:integer/screens/login_screen.dart';
import 'package:integer/widgets/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (context) => Notifier())],
        child: MaterialApp(
          title: 'Integer',
          theme: ThemeData(
            primarySwatch: Palette.orange,
          ),
          initialRoute: 'login',
          routes: {
            'splash': (context) => SplashScreenWidget(),
            'login': (context) => LoginScreen(),
            'news': (context) => const NewsScreen(title: 'News'),
            'newsCard': (context) => const SingleNewsScreen(),
            'timeSheet': (context) => TimeSheetScreen(title: 'Horas'),
            'vacations': (context) => const VacationsScreen(title: 'Férias'),
          },
        ));
  }
}
