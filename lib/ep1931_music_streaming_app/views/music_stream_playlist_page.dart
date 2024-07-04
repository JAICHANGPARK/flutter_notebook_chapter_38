import 'package:flutter/material.dart';

class MusicStreamPlaylistPage extends StatefulWidget {
  const MusicStreamPlaylistPage({super.key});

  @override
  State<MusicStreamPlaylistPage> createState() => _MusicStreamPlaylistPageState();
}

class _MusicStreamPlaylistPageState extends State<MusicStreamPlaylistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Playlists"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.apps,
            ),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {},
      ),
    );
  }
}
