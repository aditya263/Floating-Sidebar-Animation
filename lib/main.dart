import 'package:flutter/material.dart';
import 'package:flutter_sidebar_animation/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Floating Sidebar Animation',
      home: HomePageState(),
    );
  }
}
