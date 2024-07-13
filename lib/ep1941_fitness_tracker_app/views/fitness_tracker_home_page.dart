import 'package:flutter/material.dart';
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
            Row(
              children: [],
            ),
            Expanded(
              child: widget.navigationShell,
            ),
            Container(
              height: 64,
              color: Colors.blue,
              child: Row(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
