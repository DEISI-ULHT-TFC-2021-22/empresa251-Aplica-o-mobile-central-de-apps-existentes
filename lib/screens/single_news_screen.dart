import 'package:flutter/material.dart';
import 'package:integer/widgets/news_card.dart';


class SingleNewsScreen extends StatelessWidget {
  final String title;
  const SingleNewsScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{}) as Map;
    return Scaffold(
      appBar: AppBar(title: Text(arguments['title'])),
      body: const NewsCard(),
    );
  }
}