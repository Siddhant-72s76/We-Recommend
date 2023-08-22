import 'package:flutter/material.dart';
import 'package:we_recommend/screens/about_us_screen.dart';
import 'package:we_recommend/screens/help_screen.dart';
import 'package:we_recommend/screens/setting_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Color.fromARGB(255, 7, 218, 255),
            child: Text(
              'Try Me!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 26,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () =>
                Navigator.of(context).pushNamed(SettingScreen.routeName),
          ),
          ListTile(
            leading: Icon(
              Icons.help,
              size: 26,
            ),
            title: Text(
              'Help',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => Navigator.of(context).pushNamed(HelpScreen.routeName),
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              size: 26,
            ),
            title: Text(
              'About Us',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () =>
                Navigator.of(context).pushNamed(AboutUsScreen.routeName),
          ),
        ],
      ),
    );
  }
}
