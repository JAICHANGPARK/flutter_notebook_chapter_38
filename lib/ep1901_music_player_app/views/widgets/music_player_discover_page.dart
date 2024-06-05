import 'package:flutter/material.dart';
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
                  Text(
                    "Discover",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  Gap(12),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 160,
                          margin: EdgeInsets.only(right: 16),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              Gap(8),
                              Text(
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
                  Text(
                    "Popular Artist",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  Gap(8),
                  Container(
                    height: 180,
                    child: Row(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Popular Artist",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  Gap(8),
                  Column(
                    children: List.generate(10, (e) {
                      return Container(
                        height: 82,
                        color: Colors.pink,
                        margin: EdgeInsets.only(bottom: 16),
                        child: Row(
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                              ),
                            ),
                            Gap(12),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Title"),
                                Gap(4),
                                Text("Subtitle"),
                              ],
                            )),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.play_arrow,
                              ),
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
