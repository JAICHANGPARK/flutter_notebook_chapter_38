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
          margin: EdgeInsets.all(8),
          child: Placeholder(),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[300]!,
                            ),
                            child: Text('Jul 13'),
                          )
                        ],
                      ),
                      Text("The Map Flow State Challenge"),
                      Row(
                        children: [
                          Icon(Icons.group, size: 12,),
                          Text("85"),
                          Text("Participants"),


                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.timelapse, size: 12,),
                          Text("8"),
                          Text("Day left"),

                        ],
                      ),
                      Container(
                        child: Center(
                          child: Text("Join"),
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
