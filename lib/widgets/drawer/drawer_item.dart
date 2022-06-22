import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String text;
  final String route;
  final IconData icon;
  final Color textColor;
  final Color iconColor;

  const DrawerItem({
    required this.text,
    required this.route,
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
      onTap: () => Navigator.pushNamed(context, route),
    );
  }
}