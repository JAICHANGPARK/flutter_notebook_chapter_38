import 'package:flutter/material.dart';

import 'views/beauty_home_page.dart';

void main() {
  runApp(BeautyApp());
}

class BeautyApp extends StatelessWidget {
  const BeautyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BeautyHomePage(),
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
      ),
    );
  }
}
