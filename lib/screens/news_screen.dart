import 'package:flutter/material.dart';
import 'package:integer/widgets/drawer.dart';
import 'package:integer/widgets/news_card.dart';
import 'package:integer/widgets/app_bar.dart';

class NewsScreen extends StatelessWidget {
  final String title;
  const NewsScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: TopAppBar(title: title, titleColor: Colors.white),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return PostCard();
        },
      ),
    );
  }
}