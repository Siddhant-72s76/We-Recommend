import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:we_recommend/screens/about_us_screen.dart';
import 'package:we_recommend/screens/help_screen.dart';
import 'package:we_recommend/screens/profile_screen.dart';
import 'package:we_recommend/screens/setting_screen.dart';
import 'package:we_recommend/screens/tabs_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        '/': (context) => const TabsScreen(),
        SettingScreen.routeName: (context) => const SettingScreen(),
        HelpScreen.routeName: (context) => const HelpScreen(),
        AboutUsScreen.routeName: (context) => const AboutUsScreen(),
        ProfileScreen.routeName: (context) => const ProfileScreen(),
      },
    );
  }
}
