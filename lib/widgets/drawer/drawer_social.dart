import 'package:flutter/material.dart';

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
    );
  }
}