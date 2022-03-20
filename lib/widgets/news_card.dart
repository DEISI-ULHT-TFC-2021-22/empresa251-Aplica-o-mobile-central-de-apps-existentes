import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';

class NewsCard extends StatelessWidget {
  final String text;

  const NewsCard({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Text('Noticia'),
        ),
      ),
    );
  }
}