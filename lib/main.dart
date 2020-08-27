import 'package:flutter/material.dart';
import 'package:resume_page/screens/HelloPage.dart';

void main() {
  runApp(ResumeApp());
}

class ResumeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HelloThere(),
    );
  }
}
