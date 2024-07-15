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
                        color: Colors.grey[300]!,
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
                        color: Colors.grey[300]!,
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
                        color: Colors.grey[300]!,
                      ),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer_sharp,
                              size: 14,
                              color: Colors.purple,
                            ),
                            Gap(4),
                            Text(
                              "Time",
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
                                          text: "5",
                                          style: TextStyle(
                                            fontSize: 24,
                                          )),
                                      TextSpan(
                                        text: " h",
                                      ),
                                      TextSpan(
                                          text: "37",
                                          style: TextStyle(
                                            fontSize: 24,
                                          )),
                                      TextSpan(
                                        text: " min",
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
                                    Text("24 min")
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey[300]!,
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
                              "Calrories",
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
                                          text: "1,364",
                                          style: TextStyle(
                                            fontSize: 24,
                                          )),
                                      TextSpan(
                                        text: "cal",
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.green,
                                    ),
                                    Text("4.72 cal")
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            CircularPercentIndicator(
                              radius: 24,
                              percent: 0.64,
                              progressColor: Colors.blue,
                              center: Text("64%"),
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
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Daily Goals",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right_outlined,
                    )
                  ],
                ),
                Gap(8),
                Text(
                  "Last 7 days",
                  style: TextStyle(),
                ),
                Gap(12),
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
                        CircleAvatar(
                          backgroundColor: Colors.grey[200]!,
                        ),
                        Text("Tue"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          child: Icon(Icons.check),
                        ),
                        Text("Wed"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          child: Icon(Icons.check),
                        ),
                        Text("Thu"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Text("Fri"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Text("Sat"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Text("Sun"),
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
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200]!,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        child: Text(""),
                      ),
                      Gap(4),
                      Text("Dream Walker"),
                      Text(" Cycling"),
                      Spacer(),
                      Text("2:00 PM")
                    ],
                  ),
                ),
                Text(
                  "Take on the Cycling\nChallenge of a Lifetime",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    
                  ),
                  child: Text(
                    "Join Challenge",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
