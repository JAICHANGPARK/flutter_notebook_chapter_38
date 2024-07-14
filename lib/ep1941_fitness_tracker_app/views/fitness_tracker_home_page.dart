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
              margin: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(42),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Overview",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                          Gap(12),
                          Icon(
                            Icons.track_changes,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                      borderRadius: BorderRadius.circular(42),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    child: Icon(
                      Icons.fitness_center, color: Colors.grey,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                      borderRadius: BorderRadius.circular(42),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    child: Icon(
                      Icons.circle, color: Colors.grey,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                      borderRadius: BorderRadius.circular(42),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    child: Icon(
                      Icons.emoji_events_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                      borderRadius: BorderRadius.circular(42),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.grey,
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
