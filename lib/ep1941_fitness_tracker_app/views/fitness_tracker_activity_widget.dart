import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Row(
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
          ),
          ...List.generate(3, (index) {
            return Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200]!,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Afternoon Run - Lower Saxony",
                        ),
                        Text(
                          "5:29 PM",
                          style: GoogleFonts.sora(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
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
                                  const Text(
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
                                  const Text(
                                    "Time",
                                  ),
                                  Text(
                                    "2h 27m",
                                    style: GoogleFonts.sora(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),],
                          ),
                        ),
                        Gap(32),
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Row(
              children: [
                Text(
                  "Yesterday",
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
                  "5.64 km",
                )
              ],
            ),
          ),
          ...List.generate(2, (index) {
            return Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200]!,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Afternoon Run - Lower Saxony",
                        ),
                        Text(
                          "5:29 PM",
                          style: GoogleFonts.sora(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
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
                                  const Text(
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
                                  const Text(
                                    "Time",
                                  ),
                                  Text(
                                    "2h 27m",
                                    style: GoogleFonts.sora(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),],
                          ),
                        ),
                        Gap(32),
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        ),
                      ],
                    ),
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
