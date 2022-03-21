import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';

class DrawerHeadProfile extends StatelessWidget {
  final String accountName;
  final String accountEmail;

  DrawerHeadProfile({
    required this.accountName,
    required this.accountEmail,
  });

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text(accountName),
      accountEmail: Text(accountEmail),
      currentAccountPicture: CircleAvatar(
        child: ClipOval(
          child: Image.asset(
            'assets/images/avatar.png',
            fit: BoxFit.cover,
            width: 90,
            height: 90,
          ),
        ),
      ),
      decoration: const BoxDecoration(
        color: Palette.orange,
      ),
    );
  }
}