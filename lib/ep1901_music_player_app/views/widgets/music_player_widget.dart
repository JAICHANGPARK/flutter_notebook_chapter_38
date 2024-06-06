import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MusicPlayerWidget extends StatefulWidget {
  const MusicPlayerWidget({super.key});

  @override
  State<MusicPlayerWidget> createState() => _MusicPlayerWidgetState();
}

class _MusicPlayerWidgetState extends State<MusicPlayerWidget> {
  PageController pageController = PageController();

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
              Gap(32),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(color: Colors.white.withOpacity(.3), borderRadius: BorderRadius.circular(6)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.white,
                      size: 18,
                    ),
                    Gap(4),
                    Expanded(
                      child: Text(
                        "swipe right to reveal the song lyrics, "
                        "and do it again to return to position a.",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(24),
              Container(
                height: 280,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Gap(12),
              SmoothPageIndicator(
                controller: pageController,
                count: 2,
              ),
              Gap(16),
              Column(
                children: [
                  Text(
                    "Story of Flutter Development",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Gap(8),
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
