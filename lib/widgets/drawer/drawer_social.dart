import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerSocial extends StatelessWidget {
  const DrawerSocial();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        'assets/images/logo.jpg',
      ),
      title: const Text(
        'Integer consulting',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onTap: () => _launchURL,
    );
  }
}

_launchURL() async {
  const _url = 'https://integerconsulting.pt/';
  if (!await launch(_url)) throw 'Could not launch $_url';
}