import 'package:flutter/material.dart';

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Discover",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 200,
                color: Colors.blue,
              ),
            ],
          )
        ],
      ),
    );
  }
}
