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
      b
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Text(
                    "Overview",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const Gap(6),
                  const Text("Wed, 10, Jul"),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.calendar_month),
                  ),
                  const Badge(
                    label: Text("3"),
                    child: Icon(
                      Icons.notifications_rounded,
                    ),
                  ),
                  const Gap(8),
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
              margin: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      widget.navigationShell.goBranch(0);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(42),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: const Row(
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
                  GestureDetector(
                    onTap: (){
                      widget.navigationShell.goBranch(1);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(42),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: const Icon(
                        Icons.fitness_center, color: Colors.grey,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      widget.navigationShell.goBranch(2);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(42),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: const Icon(
                        Icons.circle, color: Colors.grey,
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    child: const Icon(
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    child: const Icon(
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
