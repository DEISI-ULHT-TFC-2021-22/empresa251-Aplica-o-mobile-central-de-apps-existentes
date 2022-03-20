import 'package:flutter/material.dart';
import 'package:integer/screens/main_screen.dart';

class DrawerItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color textColor;
  final Color iconColor;

  DrawerItem({
    required this.text,
    required this.icon,
    required this.textColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: iconColor,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      ),
      onTap: () => {},
    );
  }
}