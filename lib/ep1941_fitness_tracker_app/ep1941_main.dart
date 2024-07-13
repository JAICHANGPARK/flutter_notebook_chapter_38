import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_38/ep1941_fitness_tracker_app/views/fitness_tracker_home_page.dart';
import 'package:flutter_notebook_chapter_38/ep1941_fitness_tracker_app/views/fitness_tracker_overview_widget.dart';
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
            builder: (context, state, navShell) {
              return FitnessTrackerHomePage(
                navigationShell: navShell,
              );
            },
            branches: [
              StatefulShellBranch(
                navigatorKey: subKey,
                initialLocation: "/overview",
                routes: [
                  GoRoute(
                    path: "/overview",
                    builder: (context, state) {
                      return FitnessTrackerOverviewWidget();
                    },
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
