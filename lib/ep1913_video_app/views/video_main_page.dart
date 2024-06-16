import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
          iconSize: 32,
          icon: Icon(Icons.account_circle_outlined),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
            iconSize: 32,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          top: 32,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Browse",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Gap(8),
              Container(
                height: 260,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 340,
                      decoration: BoxDecoration(),
                      margin: EdgeInsets.only(right: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                          Gap(12),
                          Text(
                            "FEATURED",
                            style: TextStyle(
                              color: Colors.
                            ),
                          ),
                          Gap(8),
                          Text(
                            "Meet New Teacher, Unknown Name",
                          ),
                          Gap(4),
                          Text(
                            "Unknown Teacher",
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Gap(24),
              Text(
                "Recommended",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Gap(12),

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
      ),
    );
  }
}
