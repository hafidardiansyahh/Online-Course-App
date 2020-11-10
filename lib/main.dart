import 'package:flutter/material.dart';
import 'package:online_course_v2/screens/detail_screen.dart';
import 'package:online_course_v2/screens/intro_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailScreen(),
    );
  }
}
