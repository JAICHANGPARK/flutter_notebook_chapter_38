import 'package:flutter/material.dart';


class FitnessRecordWidget extends StatefulWidget {
  const FitnessRecordWidget({super.key});

  @override
  State<FitnessRecordWidget> createState() => _FitnessRecordWidgetState();
}

class _FitnessRecordWidgetState extends State<FitnessRecordWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Record Page")
      ],
    );
  }
}
