import 'package:flutter/material.dart';

class PetCareStartPage extends StatelessWidget {
  const PetCareStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://cdn.pixabay.com/photo/2023/05/23/15/26/bengal-cat-8012976_1280.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 120,
            bottom: 42,
            left: 0,
            right: 0,
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
