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
          icon: const Icon(Icons.account_circle_outlined),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
            iconSize: 32,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          top: 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Browse",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              const Gap(8),
              Container(
                height: 280,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 340,
                      decoration: const BoxDecoration(),
                      margin: const EdgeInsets.only(right: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          const Gap(12),
                          const Text(
                            "FEATURED",
                            style: TextStyle(
                              color: Color.fromRGBO(32, 108, 255, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Gap(8),
                          const Text(
                            "Meet New Teacher, Unknown Name",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const Gap(4),
                          const Text(
                            "Unknown Teacher",
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Gap(24),
              const Text(
                "Recommended",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              const Gap(12),
              Container(
                height: 200,
                color: Colors.blueGrey,
              ),
              const Text(
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
