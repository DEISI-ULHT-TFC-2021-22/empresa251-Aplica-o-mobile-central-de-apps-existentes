import 'package:flutter/material.dart';
import 'package:integer/widgets/drawer.dart';
import 'package:integer/widgets/app_bar.dart';

class VacationsScreen extends StatelessWidget {
  final String title;
  const VacationsScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: TopAppBar(title: title, titleColor: Colors.white),
      body: const Center(
        child: Text('Férias'),
      ),
    );
  }
}