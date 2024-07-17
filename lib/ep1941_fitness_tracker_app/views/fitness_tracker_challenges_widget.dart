import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FitnessTrackerChallengesWidget extends StatefulWidget {
  const FitnessTrackerChallengesWidget({super.key});

  @override
  State<FitnessTrackerChallengesWidget> createState() => _FitnessTrackerChallengesWidgetState();
}

class _FitnessTrackerChallengesWidgetState extends State<FitnessTrackerChallengesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 42,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                margin: const EdgeInsets.only(right: 8),
                child: const Row(
                  children: [
                    Icon(
                      Icons.motorcycle,
                      color: Colors.blue,
                    ),
                    Text(
                      "Bicycle",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    Icon(
                      Icons.clear,
                      color: Colors.blue,
                    )
                  ],
                ),
              );
            },
          ),
        ),
        Gap(8),
      ],
    );
  }
}
