import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  static const routeName = '/setting-screen';
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('Setting Screen'),
      ),
    );
  }
}
