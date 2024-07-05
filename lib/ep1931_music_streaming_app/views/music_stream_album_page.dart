import 'package:flutter/material.dart';

class MusicStreamAlbumPage extends StatefulWidget {
  const MusicStreamAlbumPage({super.key});

  @override
  State<MusicStreamAlbumPage> createState() => _MusicStreamAlbumPageState();
}

class _MusicStreamAlbumPageState extends State<MusicStreamAlbumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Album",
        ),
        centerTitle: true,

      ),
      body: Column(
        children: [],
      ),
    );
  }
}
