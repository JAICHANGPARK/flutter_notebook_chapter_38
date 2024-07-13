import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GlobalKey<NavigatorState> rootKey = GlobalKey();
GlobalKey<NavigatorState> subKey = GlobalKey();

void main() {
  runApp(FitnessTrackerApp());
}

class FitnessTrackerApp extends StatelessWidget {
  const FitnessTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        navigatorKey: rootKey,
        initialLocation: "/",
        routes: [
          StatefulShellRoute.indexedStack(
            parentNavigatorKey: rootKey,
            branches: [
              StatefulShellBranch(
                navigatorKey: subKey,
                initialLocation: "/",
                routes: [
                  GoRoute(
                    path: "/",
                    builder:
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
