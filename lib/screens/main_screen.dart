import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {

  final List<Widget> screens;

  const MainScreen({Key? key, required this.screens}) : super (key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen> {

  int pageIndex = 0;

  void _onTapped(int newPageIndex) {
    setState(() {
      pageIndex = newPageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.screens[pageIndex],
    );
  }

}