import 'package:flutter/material.dart';

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
          ...List.generate(3, (index){
            return Container(
              decoration: BoxDecoration(
                
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
