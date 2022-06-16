import 'package:flutter/material.dart';
import 'package:integer/widgets/news/news_card.dart';
import 'package:integer/model/news.dart';

class SingleNewsScreen extends StatelessWidget {
  SingleNewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{}) as Map;
    return Scaffold(
      appBar: AppBar(title: Text(arguments['newsArticle'].title)),
      body: NewsCard(newsCard: arguments['newsArticle']),
    );
  }
}