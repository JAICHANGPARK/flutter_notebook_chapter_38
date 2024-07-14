import 'package:flutter/material.dart';

class FitnessTrackerOverviewWidget extends StatefulWidget {
  const FitnessTrackerOverviewWidget({super.key});

  @override
  State<FitnessTrackerOverviewWidget> createState() => _FitnessTrackerOverviewWidgetState();
}

class _FitnessTrackerOverviewWidgetState extends State<FitnessTrackerOverviewWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
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
                        size: 12,
                        color: Colors.lightGreenAccent,
                      ),
                      Text(
                        "Steps",
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
