import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2020/02/15/00/33/yoga-4849681_1280.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.play_arrow,
                          ),
                          Text(
                            "Play all",
                          )
                        ],
                      ),
                    ),
                  )),
              Gap(16),
              Text(
                "Home - A 30 Day Yoga Journey",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "Unknown Master - 30 Videos",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
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
      ),
    );
  }
}
