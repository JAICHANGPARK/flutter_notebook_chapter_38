import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_38/ep1927_furniture_app/views/furniture_main_page.dart';

void main() {
  runApp(const FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(244, 240, 234, 1),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(244, 240, 234, 1),
          elevation: 0,
          foregroundColor: Colors.black,
          surfaceTintColor: Color.fromRGBO(244, 240, 234, 1),
        ),
      ),
      home: const FurnitureMainPage(),
    );
  }
}
