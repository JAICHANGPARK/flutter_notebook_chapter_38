import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
          SizedBox(
            height: 140,
            child: Row(
              children: [
                Expanded(
                  child: Container(
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
                                          style: TextStyle(
                                            fontSize: 24,
                                          )),
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
                            Spacer(),
                            CircularPercentIndicator(
                              radius: 24,
                              percent: .25,
                              center: Text("25%"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Gap(8),
                Expanded(
                  child: Container(
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
                                          style: TextStyle(
                                            fontSize: 24,
                                          )),
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
            ),
          )
        ],
      ),
    );
  }
}
