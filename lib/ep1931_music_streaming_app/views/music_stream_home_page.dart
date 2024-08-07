import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'widgets/music_stream_library_widget.dart';

class MusicStreamHomePage extends StatefulWidget {
  const MusicStreamHomePage({super.key});

  @override
  State<MusicStreamHomePage> createState() => _MusicStreamHomePageState();
}

class _MusicStreamHomePageState extends State<MusicStreamHomePage> {
  num pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Library",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.apps,
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: pageIndex.toInt(),
        children: [
          Center(
            child: Text("Home"),
          ),
          MusicStreamLibraryWidget(),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          currentIndex: pageIndex.toInt(),
          onTap: (idx) {
            setState(() {
              pageIndex = idx;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.music_note,
              ),
              label: "Library",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_collection_outlined,
              ),
              label: "Collection",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: "Setting",
            ),
          ],
        ),
      ),
    );
  }
}
