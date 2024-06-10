import 'package:flutter/material.dart';

import 'views/video_main_page.dart';

void main() {
  runApp(VideoMobileApp());
}

class VideoMobileApp extends StatelessWidget {
  const VideoMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VideoMainPage(),
    );
  }
}
