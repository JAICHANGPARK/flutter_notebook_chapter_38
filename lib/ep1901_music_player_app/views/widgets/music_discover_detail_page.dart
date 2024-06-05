import 'package:flutter/material.dart';

class MusicDiscoverDetailPage extends StatefulWidget {
  const MusicDiscoverDetailPage({super.key});

  @override
  State<MusicDiscoverDetailPage> createState() => _MusicDiscoverDetailPageState();
}

class _MusicDiscoverDetailPageState extends State<MusicDiscoverDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Positioned.fill(
            bottom: 72,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/08/05/10/31/an-pierle-876094_1280.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(color: Colors.black),
                ),
              ],
            ),
          ),
          Positioned.fill(
            left: 16,
            right: 16,
            top: 24,
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.blueGrey,
                            width: 1.5,
                          ),
                          color: Colors.grey,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                          ),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.blueGrey,
                            width: 1.5,
                          ),
                          color: Colors.grey,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                          ),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "The Amazing One Band",
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
