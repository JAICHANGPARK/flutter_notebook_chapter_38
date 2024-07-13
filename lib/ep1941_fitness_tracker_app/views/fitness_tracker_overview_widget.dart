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
          Text("Overview")
      ],
    );
  }
}
