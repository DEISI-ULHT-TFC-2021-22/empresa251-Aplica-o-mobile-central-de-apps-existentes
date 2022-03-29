import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';
import 'package:integer/widgets/drawer/drawer_header.dart';
import 'package:integer/widgets/drawer/drawer_item.dart';
import 'package:integer/widgets/drawer/drawer_social.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Palette.orange,
        child: ListView(
          // Remove padding
          padding: EdgeInsets.zero,
          children: [
            DrawerHeadProfile(accountName: 'Tiago Santos', accountEmail: 'example@gmail.com'),
            const Divider(color: Colors.white),
            DrawerItem(text: 'Noticias', route: 'news', textColor: Colors.white, iconColor: Colors.white, icon: Icons.newspaper_outlined),
            DrawerItem(text: 'Folha de horas', route: 'timeSheet', textColor: Colors.white, iconColor: Colors.white,icon: Icons.punch_clock_outlined),
            DrawerItem(text: 'Férias', route: 'vacations', textColor: Colors.white, iconColor: Colors.white,icon: Icons.beach_access_outlined),
            SizedBox(height: 285),
            const Divider(color: Colors.white),
            const DrawerSocial(),
          ],
        ),
      )
    );
  }
}