import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';
import '../../model/userinfo.dart';

class DrawerHeadProfile extends StatelessWidget {
  final String accountName;
  final String accountEmail;

  const DrawerHeadProfile({
    required this.accountName,
    required this.accountEmail,
  });

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text(Userinfo.email),
      accountEmail: Text(Userinfo.user!.name),
      currentAccountPicture: CircleAvatar(
        child: ClipOval(
          child: Image.network(
            Userinfo.user!.avatarURL,
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