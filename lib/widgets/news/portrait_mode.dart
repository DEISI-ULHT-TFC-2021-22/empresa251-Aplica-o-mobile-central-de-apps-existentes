import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:integer/widgets/news/list_news_card.dart';
import 'package:integer/model/news.dart';


class NewsPortraitMode extends StatefulWidget {
  const NewsPortraitMode({Key? key}) : super(key: key);

  @override
  _NewsPortraitModeState createState() => _NewsPortraitModeState();
}

class _NewsPortraitModeState extends State<NewsPortraitMode> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<News>>(
        future: fetchNews(),
        builder: (context, future){
          if(!future.hasData) {
            return Container(); // Display empty container if the list is empty
          } else {
            List<News>? list = future.data;
            return ListView.builder(
                itemCount: list?.length,
                itemBuilder: (BuildContext context, int index) {
                  return PostCard(isLandscape: false, newsArticle:list![index]);
                },
            );
          }
        }
    );
  }
}

Future<List<News>> fetchNews() async {
  final response = await http.get(Uri.parse('https://tfcapi.app.smartmock.io/news'));
  List<News> newsArticles = [];
  if (response.statusCode == 200) {
    final data = jsonDecode(utf8.decode(response.bodyBytes));
    for(var news in data.values) {
      newsArticles.add(News.fromJson(news));
    }
    return newsArticles;
  } else {
    throw Exception('Failed to load album');
  }
}