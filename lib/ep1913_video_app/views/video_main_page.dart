import 'package:flutter/material.dart';

class VideoMainPage extends StatefulWidget {
  const VideoMainPage({super.key});

  @override
  State<VideoMainPage> createState() => _VideoMainPageState();
}

class _VideoMainPageState extends State<VideoMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        foregroundColor: Colors.blueGrey,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.account_circle_outlined),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Browse",
            ),
            Container(
              height: 240,
              color: Colors.blueGrey,
            ),
            Text(
              "Recommended",
            ),
            Container(
              height: 200,
              color: Colors.blueGrey,
            ),

            Text(
              "Meditation",
            ),
            Container(
              height: 200,
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}
