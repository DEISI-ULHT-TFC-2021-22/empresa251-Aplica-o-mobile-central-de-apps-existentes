import 'package:flutter/material.dart';
import 'package:integer/widgets/news/list_news_card.dart';

class NewsLandscapeMode extends StatefulWidget {
  const NewsLandscapeMode({Key? key}) : super(key: key);

  @override
  _NewsLandscapeModeState createState() => _NewsLandscapeModeState();
}

class _NewsLandscapeModeState extends State<NewsLandscapeMode> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return PostCard(isLandscape: true,);
      },
    );
  }
}
