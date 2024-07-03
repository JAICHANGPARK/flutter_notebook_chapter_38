import 'package:flutter/material.dart';

import 'views/music_stream_home_page.dart';

void main() {
  runApp(MusicStreamApp());
}

class MusicStreamApp extends StatelessWidget {
  const MusicStreamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
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
        bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.white,
          surfaceTintColor: Colors.white,
        ),
      ),
      home: MusicStreamHomePage(),
    );
  }
}
