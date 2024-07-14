import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FitnessTrackerOverviewWidget extends StatefulWidget {
  const FitnessTrackerOverviewWidget({super.key});

  @override
  State<FitnessTrackerOverviewWidget> createState() => _FitnessTrackerOverviewWidgetState();
}

class _FitnessTrackerOverviewWidgetState extends State<FitnessTrackerOverviewWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.directions_run,
                            size: 14,
                            color: Colors.lightGreenAccent,
                          ),
                          Gap(4),
                          Text(
                            "Steps",
                          )
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "6.4",
                                    ),
                                    TextSpan(
                                      text: " km",
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_drop_up,
                                    color: Colors.lightGreen,
                                  ),
                                  Text("3.8 km")
                                ],
                              )
                            ],
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              ),
              Gap(8),
              Expanded(
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.directions_run,
                            size: 14,
                            color: Colors.lightGreenAccent,
                          ),
                          Gap(4),
                          Text(
                            "Steps",
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "6.4",
                                    ),
                                    TextSpan(
                                      text: " km",
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_drop_up,
                                    color: Colors.lightGreen,
                                  ),
                                  Text("3.8 km")
                                ],
                              )
                            ],
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
