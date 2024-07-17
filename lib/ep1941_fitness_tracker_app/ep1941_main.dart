import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_38/ep1941_fitness_tracker_app/views/fitness_record_widget.dart';
import 'package:flutter_notebook_chapter_38/ep1941_fitness_tracker_app/views/fitness_tracker_activity_widget.dart';
import 'package:flutter_notebook_chapter_38/ep1941_fitness_tracker_app/views/fitness_tracker_home_page.dart';
import 'package:flutter_notebook_chapter_38/ep1941_fitness_tracker_app/views/fitness_tracker_overview_widget.dart';
import 'package:go_router/go_router.dart';

import 'views/fitness_tracker_challenges_widget.dart';

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
        initialLocation: "/overview",
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
                routes: [
                  GoRoute(
                    path: "/overview",
                    builder: (context, state) {
                      return FitnessTrackerOverviewWidget();
                    },
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: "/activity",
                    builder: (context, state) {
                      return FitnessTrackerActivityWidget();
                    },
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: "/record",
                    builder: (context, state) {
                      return FitnessRecordWidget();
                    },
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: "/challenges",
                    builder: (context, state) {
                      return FitnessTrackerChallengesWidget();
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
