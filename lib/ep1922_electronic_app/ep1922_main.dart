import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_38/ep1922_electronic_app/view/electronic_home_page.dart';

void main() {
  runApp(ElectronicMobileApp());
}

class ElectronicMobileApp extends StatelessWidget {
  const ElectronicMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: ElectronicHomePage(),
    );
  }
}
