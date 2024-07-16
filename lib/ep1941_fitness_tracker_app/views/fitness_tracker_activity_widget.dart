import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FitnessTrackerActivityWidget extends StatefulWidget {
  const FitnessTrackerActivityWidget({super.key});

  @override
  State<FitnessTrackerActivityWidget> createState() => _FitnessTrackerActivityWidgetState();
}

class _FitnessTrackerActivityWidgetState extends State<FitnessTrackerActivityWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 46,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  child: Row(
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
          Row(
            children: [
              Text(
                "Today",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(
                Icons.flag,
                color: Colors.cyan,
                size: 16,
              ),
              Text(
                "24.5 km",
              )
            ],
          ),
          ...List.generate(3, (index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200]!,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Afternoon Run - Lower Saxony",
                        ),
                        Text(
                          "5:29 PM",
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Distance",
                          ),
                          Text(
                            "6.4 km",
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Elev Gain",
                          ),
                          Text(
                            "85 m",
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Time",
                          ),
                          Text(
                            "2h 27m",
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
