import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';
import 'package:integer/helper/demo_values.dart';
import 'package:integer/model/news.dart';
import 'package:intl/intl.dart';

class PostCard extends StatelessWidget {
  bool isLandscape = false;
  News newsArticle;
  PostCard({Key? key, required this.isLandscape, required this.newsArticle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: isLandscape ? 9 / 3 : 6 / 3,
      child: Card(
        elevation: 2,
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, 'newsCard', arguments: {'newsArticle': newsArticle}),
          child: Container(
            margin: const EdgeInsets.all(6.0),
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: <Widget>[
                _Post(newsArticle:newsArticle),
                Divider(color: Palette.orange),
                _PostDetails(newsArticle:newsArticle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Post extends StatelessWidget {
  final News newsArticle;
  const _Post({Key? key, required this.newsArticle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _PostImage(newsArticle:newsArticle),
            _PostTitleAndSummary(newsArticle:newsArticle)
          ]
      ),
    );
  }
}

class _PostTitleAndSummary extends StatelessWidget {
  final News newsArticle;
  const _PostTitleAndSummary({Key? key, required this.newsArticle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String title = newsArticle.title;
    final String summary = newsArticle.summary;

    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.only(left: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2.0),
            Text(summary),
          ],
        ),
      ),
    );
  }
}

class _PostImage extends StatelessWidget {
  final News newsArticle;
  const _PostImage({Key? key, required this.newsArticle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Image.network(
            newsArticle.imageURL,
            height: 100,
            width: 200
        )
    );
  }
}

class _PostDetails extends StatelessWidget {
  final News newsArticle;
  const _PostDetails({Key? key, required this.newsArticle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _UserImage(newsArticle:newsArticle),
        _UserNameAndEmail(newsArticle:newsArticle),
        _PostTimeStamp(newsArticle:newsArticle),
      ],
    );
  }
}

class _UserNameAndEmail extends StatelessWidget {
  final News newsArticle;
  const _UserNameAndEmail({Key? key, required this.newsArticle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(newsArticle.createdBy),
            SizedBox(height: 2.0),
          ],
        ),
      ),
    );
  }
}

class _UserImage extends StatelessWidget {
  final News newsArticle;
  const _UserImage({Key? key, required this.newsArticle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: CircleAvatar(
        backgroundImage: AssetImage(DemoValues.userImage),
      ),
    );
  }
}

class _PostTimeStamp extends StatelessWidget {
  final News newsArticle;
  const _PostTimeStamp({Key? key, required this.newsArticle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Text(
        DateFormat('dd-MM-yyyy').format(newsArticle.createdAt),
        style: TextStyle(
          color: Palette.orange,
        ),
      ),
    );
  }
}