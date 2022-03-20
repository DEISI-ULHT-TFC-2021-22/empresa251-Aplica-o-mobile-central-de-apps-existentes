import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';
import 'package:integer/widgets/drawer_header.dart';
import 'package:integer/widgets/drawer_item.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Palette.integerOrange,
        child: ListView(
          // Remove padding
          padding: EdgeInsets.zero,
          children: [
            DrawerHeadProfile(accountName: 'Tiago Santos', accountEmail: 'example@gmail.com'),
            Divider(color: Colors.white),
            DrawerItem(text: 'Noticias', route: 'news', textColor: Colors.white, iconColor: Colors.white, icon: Icons.newspaper_outlined),
            DrawerItem(text: 'Folha de horas', route: 'timeSheet', textColor: Colors.white, iconColor: Colors.white,icon: Icons.punch_clock_outlined),
            DrawerItem(text: 'Férias', route: 'vacations', textColor: Colors.white, iconColor: Colors.white,icon: Icons.beach_access_outlined),
          ],
        ),
      )
    );
  }
}