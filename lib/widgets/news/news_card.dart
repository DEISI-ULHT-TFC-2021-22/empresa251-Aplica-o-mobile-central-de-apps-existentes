import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';
import 'package:integer/helper/demo_values.dart';
import 'package:intl/intl.dart';

import '../../model/news.dart';

class NewsCard extends StatelessWidget {
  final News newsCard;
  const NewsCard({Key? key, required this.newsCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation){
        if(orientation == Orientation.portrait){
          return Card(
            elevation: 2,
            child: Container(
              margin: const EdgeInsets.all(6.0),
              padding: const EdgeInsets.all(6.0),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _NewsImage(image: newsCard.imageURL),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _NewsDescription(title: newsCard.title),
                            ],
                          ),
                        ]
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Row(
                      children: [
                        _NewsContent(body: newsCard.body),
                      ],
                    ),
                  ),
                  const Divider(color: Palette.orange),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        _PostDetails(newsArticle: newsCard),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Card(
            elevation: 2,
            child: Container(
              margin: const EdgeInsets.all(6.0),
              padding: const EdgeInsets.all(6.0),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 7,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _NewsImage(image: newsCard.imageURL),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _NewsDescription(title: newsCard.title),
                            ],
                          ),
                        ]
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Row(
                      children: [
                        _NewsContent(body: newsCard.body),
                      ],
                    ),
                  ),
                  const Divider(color: Palette.orange),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        _PostDetails(newsArticle: newsCard),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}

class _NewsImage extends StatelessWidget {
  String image;
  _NewsImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      height: 100,
      width: 200,
    );
  }
}

class _NewsDescription extends StatelessWidget {
  final String title;
  const _NewsDescription({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _NewsContent extends StatelessWidget {
  String body;
  _NewsContent({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Text(body)
    );
  }
}

class _PostDetails extends StatelessWidget {
  News newsArticle;
  _PostDetails({Key? key, required this.newsArticle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          const _UserImage(),
          _UserNameAndEmail(createdBy: newsArticle.createdBy),
          _PostTimeStamp(createdAt: newsArticle.createdAt),
        ],
      ),
    );
  }
}

class _UserNameAndEmail extends StatelessWidget {
  String createdBy;
  _UserNameAndEmail({Key? key, required this.createdBy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(createdBy),
            const SizedBox(height: 0.0),
          ],
        ),
      ),
    );
  }
}

class _UserImage extends StatelessWidget {
  const _UserImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: AssetImage(DemoValues.userImage),
    );
  }
}

class _PostTimeStamp extends StatelessWidget {
  DateTime createdAt;
  _PostTimeStamp({Key? key, required this.createdAt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat('dd-MM-yyyy').format(createdAt),
      style: const TextStyle(
        color: Palette.orange,
      ),
    );
  }
}