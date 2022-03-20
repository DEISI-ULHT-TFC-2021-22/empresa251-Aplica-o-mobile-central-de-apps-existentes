import 'package:flutter/material.dart';

class TextLogin extends StatefulWidget {
  @override
  _TextLoginState createState() => _TextLoginState();
}

class _TextLoginState extends State<TextLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 10.0),
      child: SizedBox(
        height: 200,
        width: 200,
        child: Column(
          children: <Widget>[
            Container(
              height: 40,
            ),
            Container(
              height: 80,
              child: Image.asset(
                'assets/images/logo.jpg',
              ),
            ),
            const Center(
              child: Text(
                'integer app',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}