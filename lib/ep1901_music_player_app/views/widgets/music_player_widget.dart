import 'package:flutter/material.dart';

class MusicPlayerWidget extends StatefulWidget {
  const MusicPlayerWidget({super.key});

  @override
  State<MusicPlayerWidget> createState() => _MusicPlayerWidgetState();
}

class _MusicPlayerWidgetState extends State<MusicPlayerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                    ),
                    iconSize: 32,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Favorite",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                    ),
                    iconSize: 32,
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                    ),
                    Expanded(
                      child: Text(
                        "swipe right to reveal the song lyrics, "
                        "and do it again to return to position a.",
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Column(
                children: [
                  Text(
                    "Story of Flutter Development",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Flutter.dev",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Slider(
                value: 0,
                onChanged: (b) {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("1:56"), Text("3:00")],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
