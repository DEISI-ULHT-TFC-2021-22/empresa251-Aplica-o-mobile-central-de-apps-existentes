import 'package:flutter/material.dart';
import 'package:integer/widgets/news/news_card.dart';

class SingleNewsScreen extends StatelessWidget {
  const SingleNewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{}) as Map;
    return Scaffold(
      appBar: AppBar(title: Text(arguments['newsArticle'].title)),
      body: NewsCard(newsCard: arguments['newsArticle']),
    );
  }
}