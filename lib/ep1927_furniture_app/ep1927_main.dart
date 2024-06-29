import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_38/ep1927_furniture_app/views/furniture_main_page.dart';

void main() {
  runApp(FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FurnitureMainPage(),
    );
  }
}
