import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class MusicStreamLibraryWidget extends StatefulWidget {
  const MusicStreamLibraryWidget({super.key});

  @override
  State<MusicStreamLibraryWidget> createState() => _MusicStreamLibraryWidgetState();
}

class _MusicStreamLibraryWidgetState extends State<MusicStreamLibraryWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recently Added",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
                          Icons.more_vert,
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
    );
  }
}
