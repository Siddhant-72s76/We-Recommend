import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  static const routeName = '/help-screen';
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: Center(
        child: Text('Help Screen'),
      ),
    );
  }
}
