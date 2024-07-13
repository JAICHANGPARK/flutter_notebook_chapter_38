import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class FitnessTrackerHomePage extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const FitnessTrackerHomePage({
    super.key,
    required this.navigationShell,
  });

  @override
  State<FitnessTrackerHomePage> createState() => _FitnessTrackerHomePageState();
}

class _FitnessTrackerHomePageState extends State<FitnessTrackerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    "Overview",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Gap(6),
                  Text("Wed, 10, Jul"),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.calendar_month),
                  ),
                  Badge(
                    label: Text("3"),
                    child: Icon(
                      Icons.notifications_rounded,
                    ),
                  ),
                  Gap(8),
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.grey[100],
                  )
                ],
              ),
            ),
            Expanded(
              child: widget.navigationShell,
            ),
            Container(
              height: 64,
              color: Colors.grey,
              child: Row(
                children: [
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Overview",
                          ),
                          Icon(
                            Icons.track_changes,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
