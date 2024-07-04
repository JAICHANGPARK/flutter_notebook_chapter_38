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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: .9,
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue,
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    right: 16,
                    top: 0,
                    bottom: 62,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[50],
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 16,
                    bottom: 42,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dance",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "134 Songs",
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
