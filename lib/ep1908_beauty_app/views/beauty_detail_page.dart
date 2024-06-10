import 'package:flutter/material.dart';

class BeautyDetailPage extends StatefulWidget {
  const BeautyDetailPage({super.key});

  @override
  State<BeautyDetailPage> createState() => _BeautyDetailPageState();
}

class _BeautyDetailPageState extends State<BeautyDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://cdn.pixabay.com/photo/2023/11/10/02/30/woman-8378634_1280.jpg",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
