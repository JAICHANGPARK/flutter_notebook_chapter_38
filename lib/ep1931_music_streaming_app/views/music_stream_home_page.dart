import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MusicStreamHomePage extends StatefulWidget {
  const MusicStreamHomePage({super.key});

  @override
  State<MusicStreamHomePage> createState() => _MusicStreamHomePageState();
}

class _MusicStreamHomePageState extends State<MusicStreamHomePage> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(24),
            Column(
              children: List.generate(
                5,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 28,
                      ),
                      title: Text("Playlists"),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_right),
                      ),
                      titleTextStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  );
                },
              ),
            ),
            Gap(12),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16
              ),
              child: Row(
                children: [
                  Text(
                    "Recently Added",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
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
