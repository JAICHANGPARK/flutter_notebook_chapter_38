import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_38/ep1901_music_player_app/views/widgets/music_discover_detail_page.dart';
import 'package:flutter_notebook_chapter_38/ep1901_music_player_app/views/widgets/music_player_widget.dart';
import 'package:gap/gap.dart';

class MusicPlayerDiscoverPage extends StatefulWidget {
  const MusicPlayerDiscoverPage({super.key});

  @override
  State<MusicPlayerDiscoverPage> createState() => _MusicPlayerDiscoverPageState();
}

class _MusicPlayerDiscoverPageState extends State<MusicPlayerDiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 16,
                bottom: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Discover",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  const Gap(12),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 160,
                          margin: const EdgeInsets.only(right: 16),
                          child: Column(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    showGeneralDialog(
                                      context: context,
                                      pageBuilder: (BuildContext context, Animation<double> animation,
                                          Animation<double> secondaryAnimation) {
                                        return const MusicDiscoverDetailPage();
                                      },
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(8),
                              const Text(
                                "Title Title Title Title Title Title Title Title",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Popular Artist",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  const Gap(8),
                  Container(
                    height: 180,
                    child: const Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: CircleAvatar(
                                  radius: 64,
                                ),
                              ),
                              Text(
                                "Title",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        Gap(12),
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: CircleAvatar(
                                  radius: 64,
                                ),
                              ),
                              Text(
                                "Title",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        Gap(12),
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: CircleAvatar(
                                  radius: 64,
                                ),
                              ),
                              Text(
                                "Title",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Popular Artist",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  const Gap(8),
                  Column(
                    children: List.generate(10, (e) {
                      return Container(
                        height: 82,
                        margin: const EdgeInsets.only(bottom: 16),
                        child: Row(
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(6)),
                            ),
                            const Gap(12),
                            const Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Title",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Gap(4),
                                Text(
                                  "Subtitle",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )),
                            IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)
                                  ),
                                  builder: (context) {
                                    return SizedBox(
                                      height: MediaQuery.of(context).size.height - 120,
                                      child: MusicPlayerWidget(),
                                    );
                                  },
                                );
                              },
                              icon: const Icon(
                                Icons.play_arrow,
                              ),
                              color: Colors.orange,
                              iconSize: 32,
                            )
                          ],
                        ),
                      );
                    }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
