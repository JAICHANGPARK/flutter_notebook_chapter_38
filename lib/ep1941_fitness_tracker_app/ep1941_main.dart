import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(FitnessTrackerApp());
}

class FitnessTrackerApp extends StatelessWidget {
  const FitnessTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        routes: [
          StatefulShellRoute.indexedStack(
            branches: [

            ],
          ),
        ],
      ),
    );
  }
}
