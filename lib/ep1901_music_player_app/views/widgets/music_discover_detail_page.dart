import 'package:flutter/material.dart';

class MusicDiscoverDetailPage extends StatefulWidget {
  const MusicDiscoverDetailPage({super.key});

  @override
  State<MusicDiscoverDetailPage> createState() => _MusicDiscoverDetailPageState();
}

class _MusicDiscoverDetailPageState extends State<MusicDiscoverDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: Container(
                  color:  Colors.black
              ),
            ),
          ],
        ))
      ],
    );
  }
}
