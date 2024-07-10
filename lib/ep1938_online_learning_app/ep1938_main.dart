import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_38/ep1938_online_learning_app/views/online_learning_start_page.dart';

void main() {
  runApp(OnlineLearningApp());
}

class OnlineLearningApp extends StatelessWidget {
  const OnlineLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnlineLearningStartPage(),
    );
  }
}
