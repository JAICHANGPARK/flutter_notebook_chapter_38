import 'package:flutter/material.dart';

class OnlineLearningHomePage extends StatefulWidget {
  const OnlineLearningHomePage({super.key});

  @override
  State<OnlineLearningHomePage> createState() => _OnlineLearningHomePageState();
}

class _OnlineLearningHomePageState extends State<OnlineLearningHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      color: Colors.red[50],
                      shape: BoxShape.circle,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Hello!"),
                        Text(
                          "Dreamwalker",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
