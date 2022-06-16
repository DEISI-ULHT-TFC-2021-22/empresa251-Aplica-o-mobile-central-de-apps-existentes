import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';
import 'package:integer/helper/demo_values.dart';

import '../../model/news.dart';

class NewsCard extends StatelessWidget {
  final News newsCard;
  NewsCard({Key? key, required this.newsCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                children: const [
                  _PostDetails(),
                ],
              ),
            ),
          ],
        ),
      ),
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
      style: TextStyle(
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
  const _PostDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: const <Widget>[
          _UserImage(),
          _UserNameAndEmail(),
          _PostTimeStamp(),
        ],
      ),
    );
  }
}

class _UserNameAndEmail extends StatelessWidget {
  const _UserNameAndEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text(
              DemoValues.userName,
            ),
            SizedBox(height: 2.0),
            Text(
              DemoValues.userEmail,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
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
  const _PostTimeStamp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      DemoValues.postTime,
      style: TextStyle(
        color: Palette.orange,
      ),
    );
  }
}