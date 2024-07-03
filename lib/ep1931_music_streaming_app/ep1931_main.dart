import 'package:flutter/material.dart';

void main() {
  runApp(MusicStreamApp());
}

class MusicStreamApp extends StatelessWidget {
  const MusicStreamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black,
        ),
      ),
    );
  }
}
