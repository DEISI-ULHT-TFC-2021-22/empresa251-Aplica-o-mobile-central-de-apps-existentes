import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:integer/widgets/news/list_news_card.dart';
import 'package:integer/model/news.dart';

class NewsLandscapeMode extends StatefulWidget {
  const NewsLandscapeMode({Key? key}) : super(key: key);

  @override
  _NewsLandscapeModeState createState() => _NewsLandscapeModeState();
}

class _NewsLandscapeModeState extends State<NewsLandscapeMode> {

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
                return PostCard(isLandscape: true, newsArticle:list![index]);
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
    final data = jsonDecode(response.body);
    for(var news in data.values) {
      newsArticles.add(News.fromJson(news));
    }
    return newsArticles;
  } else {
    throw Exception('Failed to load album');
  }
}