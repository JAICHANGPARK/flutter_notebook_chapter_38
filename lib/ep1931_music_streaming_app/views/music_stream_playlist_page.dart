import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:gap/gap.dart';

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
        title: const Text("Playlists"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.apps,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: .75,
          ),
          itemBuilder: (context, index) {
            return Container(
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
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 16,
                    bottom: 52,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Best Dance",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          Gap(12),
                          Text(
                            "Songs 2024",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 0,
                    bottom: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dance",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Gap(5),
                        Text(
                          "134 Songs",
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 24,
                    bottom: 26,
                    child: Container(
                      height: 58,
                      width: 58,
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                      padding: EdgeInsets.all(8),
                      child: Container(
                        decoration: ShapeDecoration(
                          shape: PolygonBorder(sides: 8),
                          color: Colors.purple,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.play_arrow,
                          ),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
