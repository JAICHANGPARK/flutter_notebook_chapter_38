import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:gap/gap.dart';

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
        title: const Text(
          "Album",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              height: 440,
              child: Stack(
                children: [
                  // Positioned(
                  //   left: 16,
                  //   right: 16,
                  //   top: 0,
                  //   bottom: 62,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.purple[50],
                  //       borderRadius: BorderRadius.circular(24),
                  //     ),
                  //   ),
                  // ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 8,
                    bottom: 100,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[200],
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Best Dance",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                                color: Colors.white,
                              ),
                            ),
                            Gap(12),
                            Text(
                              "Songs 2024",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dance",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Gap(5),
                              Text(
                                "134 Songs",
                              )
                            ],
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blue[50]!,
                          foregroundColor: Colors.blue,
                          child: Icon(Icons.shuffle),
                          radius: 28,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 42,
                    bottom: 50,
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        decoration: const ShapeDecoration(
                          shape: PolygonBorder(sides: 8),
                          color: Colors.black,
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.play_arrow,
                          ),
                          color: Colors.white,
                          onPressed: () {},
                          iconSize: 32,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                children: List.generate(10, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      children: [
                        Container(
                          height: 72,
                          width: 72,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Gap(32),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Stay",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("The Kid, ... ... ...")
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.cloud_download,
                          ),
                          color: Colors.grey,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.apps,
                          ),
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
