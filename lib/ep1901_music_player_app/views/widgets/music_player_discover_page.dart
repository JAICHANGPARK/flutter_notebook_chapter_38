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
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Gap(12),
                Container(
                  height: 200,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Popular Artist",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
