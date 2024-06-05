import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_38/ep1901_music_player_app/views/music_player_home_page.dart';

void main() {
  runApp(MusicPlayerApp());
}


class MusicPlayerApp extends StatelessWidget {
  const MusicPlayerApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MusicPlayerHomePage(),
    );
  }
}
