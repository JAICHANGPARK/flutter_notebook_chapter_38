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
            height: 130,
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
                              Icons.flag,
                              size: 14,
                              color: Colors.blue,
                            ),
                            Gap(4),
                            Text(
                              "Distance",
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
                                          text: "90",
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
                                      Icons.arrow_drop_down,
                                      color: Colors.red,
                                    ),
                                    Text("4.72 km")
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            CircularPercentIndicator(
                              radius: 24,
                              percent: 0,
                              center: Text("0%"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(8),
          SizedBox(
            height: 130,
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
                              Icons.flag,
                              size: 14,
                              color: Colors.blue,
                            ),
                            Gap(4),
                            Text(
                              "Distance",
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
                                          text: "90",
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
                                      Icons.arrow_drop_down,
                                      color: Colors.red,
                                    ),
                                    Text("4.72 km")
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            CircularPercentIndicator(
                              radius: 24,
                              percent: 0,
                              center: Text("0%"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 160,
            margin: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[400]!,
              ),
            ),
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Your Daily Goals",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right_outlined,
                    )
                  ],
                ),
                Text(
                  "Last 7 days",
                  style: TextStyle(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[200]!,
                        ),
                        Text("Mon"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(),
                        Text("Mon"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(),
                        Text("Mon"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(),
                        Text("Mon"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(),
                        Text("Mon"),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 180,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[400]!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
