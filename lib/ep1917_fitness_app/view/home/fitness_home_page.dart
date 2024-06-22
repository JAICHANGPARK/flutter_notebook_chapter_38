import 'package:flutter/material.dart';

class FitnessHomePage extends StatefulWidget {
  const FitnessHomePage({super.key});

  @override
  State<FitnessHomePage> createState() => _FitnessHomePageState();
}

class _FitnessHomePageState extends State<FitnessHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(),
              Expanded(
                  child: Column(
                children: [
                  Text(
                    "Good morning!",
                  ),
                  Text(
                    "Dream Walker",
                  )
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}
