import 'package:flutter/material.dart';
import 'package:integer/widgets/drawer/drawer.dart';
import 'package:integer/widgets/app_bar.dart';
import 'package:integer/widgets/news/landscape_mode.dart';
import 'package:integer/widgets/news/portrait_mode.dart';

class NewsScreen extends StatelessWidget {
  final String title;
  const NewsScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: TopAppBar(title: title, titleColor: Colors.white),
      body: OrientationBuilder(
        builder: (context, orientation){
          if(orientation == Orientation.portrait){
            return const NewsPortraitMode();
          } else {
            return const NewsLandscapeMode();
          }
        },
      )
    );
  }
}