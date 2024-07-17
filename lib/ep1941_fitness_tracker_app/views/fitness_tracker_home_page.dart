import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    switch (widget.navigationShell.currentIndex) {
                      0 => "Overview",
                      1 => "Activity",
                      _ => "",
                    },
                    style: GoogleFonts.sora(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
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
                    onTap: () {
                      widget.navigationShell.goBranch(0);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: widget.navigationShell.currentIndex == 0 ? Colors.blue : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(42),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Row(
                        children: [
                          if (widget.navigationShell.currentIndex == 0)
                            Row(
                              children: [
                                Text(
                                  "Overview",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                Gap(12),
                              ],
                            ),
                          Icon(
                            Icons.track_changes,
                            color: widget.navigationShell.currentIndex == 0 ? Colors.blue : Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.navigationShell.goBranch(1);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: widget.navigationShell.currentIndex == 1 ? Colors.blue : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(42),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Row(
                        children: [
                          if (widget.navigationShell.currentIndex == 1)
                            Row(
                              children: [
                                Text(
                                  "Activity",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                Gap(12),
                              ],
                            ),
                          Icon(
                            Icons.fitness_center,
                            color: widget.navigationShell.currentIndex == 1 ? Colors.blue : Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.navigationShell.goBranch(2);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: widget.navigationShell.currentIndex == 2 ? Colors.blue : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(42),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Row(
                        children: [
                          if (widget.navigationShell.currentIndex == 2)
                            Row(
                              children: [
                                Text(
                                  "Record",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                Gap(12),
                              ],
                            ),
                          Icon(
                            Icons.circle,
                            color: widget.navigationShell.currentIndex == 2 ? Colors.blue : Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  widget(
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
                      child: Row(
                        children: [
                          if (widget.navigationShell.currentIndex == 3)
                            Row(
                              children: [
                                Text(
                                  "Activity",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                Gap(12),
                              ],
                            ),
                          const Icon(
                            Icons.emoji_events_outlined,
                            color: Colors.grey,
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
