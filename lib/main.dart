import 'package:flutter/material.dart';
import 'package:we_recommend/screens/about_us_screen.dart';
import 'package:we_recommend/screens/help_screen.dart';
import 'package:we_recommend/screens/profile_screen.dart';
import 'package:we_recommend/screens/setting_screen.dart';
import 'package:we_recommend/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: TabsScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(),
        SettingScreen.routeName: (context) => SettingScreen(),
        HelpScreen.routeName: (context) => HelpScreen(),
        AboutUsScreen.routeName: (context) => AboutUsScreen(),
        ProfileScreen.routeName: (context) => ProfileScreen(),
      },
    );
  }
}
