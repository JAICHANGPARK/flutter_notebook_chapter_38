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
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromRGBO(244, 240, 234, 1),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
          )),
      home: FurnitureMainPage(),
    );
  }
}
