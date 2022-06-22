import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color titleColor;

  const TopAppBar({
    required this.title,
    required this.titleColor,
  });

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: titleColor),
      ),
      iconTheme: IconThemeData(
          color: titleColor
      ),
      actions: [
        SizedBox(
          width: 42,
          child: Image.asset(
            'assets/images/logo.jpg',
          ),
        ),
      ],
    );
  }
}