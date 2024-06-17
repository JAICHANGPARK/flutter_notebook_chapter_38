import 'package:flutter/material.dart';

class VideoDetailPage extends StatefulWidget {
  const VideoDetailPage({super.key});

  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Placeholder(),
            ),
            Text(
              "Home - A 30 Day Yoga Journey",
            ),
            Text("Unknown Master - 30 Videos"),
            Container(
              height: 42,
              child: Row(
                children: [],
              ),
            ),
            Text("title titletitletitletitletitletitletitletitletitle"),
            TextButton(
              onPressed: () {},
              child: Text(
                "Read more",
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
