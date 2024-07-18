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
                      // color: Colors.blue,
                      ),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                margin: const EdgeInsets.only(right: 8),
                child: const Row(
                  children: [
                    Icon(
                      Icons.fitness_center,
                    ),
                    Text(
                      "Workouts",
                      style: TextStyle(),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Gap(8),
        Container(
          height: 240,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey[400]!,
            ),
            
          ),
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300]!,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    child: Text('Jul 13'),
                  )
                ],
              ),
              Gap(8),
              Text(
                "The Map Flow State Challenge",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(8),
              Row(
                children: [
                  Icon(
                    Icons.group,
                    size: 12,
                  ),
                  Gap(4),
                  Text(
                    "85",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(4),
                  Text("Participants"),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.timelapse,
                    size: 12,
                  ),
                  Gap(4),
                  Text(
                    "8",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(4),
                  Text("Day left"),
                ],
              ),
              Gap(8),
              Container(
                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(24)),
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Center(
                  child: Text(
                    "Join",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: .9,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[300]!,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            child: Text('Jul 13'),
                          )
                        ],
                      ),
                      Gap(8),
                      Text(
                        "The Map Flow State Challenge",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gap(8),
                      Row(
                        children: [
                          Icon(
                            Icons.group,
                            size: 12,
                          ),
                          Gap(4),
                          Text(
                            "85",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(4),
                          Text("Participants"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timelapse,
                            size: 12,
                          ),
                          Gap(4),
                          Text(
                            "8",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(4),
                          Text("Day left"),
                        ],
                      ),
                      Gap(8),
                      Container(
                        decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(24)),
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Center(
                          child: Text(
                            "Join",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
