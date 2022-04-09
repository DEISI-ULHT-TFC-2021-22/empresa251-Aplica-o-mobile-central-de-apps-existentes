import 'package:flutter/material.dart';
import 'package:integer/widgets/news/list_news_card.dart';

class NewsPortraitMode extends StatefulWidget {
  const NewsPortraitMode({Key? key}) : super(key: key);

  @override
  _NewsPortraitModeState createState() => _NewsPortraitModeState();
}

class _NewsPortraitModeState extends State<NewsPortraitMode> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return PostCard(isLandscape: false);
      },
    );
  }
}
