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
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_down,
              ),
            ),
            Expanded(
              child: Text("Favorite"),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
              ),
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
            ),
            Text("Flutter.dev")
          ],
        ),
        Slider(
          value: 0,
          onChanged: (b) {},
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("1:56"),
            Text("3:00")
          ],
        )
      ],
    );
  }
}
