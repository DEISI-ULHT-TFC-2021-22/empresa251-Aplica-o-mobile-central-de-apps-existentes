import 'package:flutter/material.dart';
import 'package:integer/widgets/drawer/drawer.dart';
import 'package:integer/widgets/app_bar.dart';
import 'package:integer/widgets/vacation/portrait_mode.dart';

import '../widgets/vacation/landscape_mode.dart';


class VacationsScreen extends StatelessWidget {
  final String title;
  const VacationsScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: TopAppBar(title: title, titleColor: Colors.white),
      body: OrientationBuilder(
        builder: (context, orientation){
          if(orientation == Orientation.portrait){
            return const VacationPortraitMode();
          } else {
            return const VacationLandscapeMode();
          }
        },
      )
    );
  }
}