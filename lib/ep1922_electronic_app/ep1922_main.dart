import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_38/ep1922_electronic_app/view/electronic_app_shell.dart';
import 'package:flutter_notebook_chapter_38/ep1922_electronic_app/view/electronic_home_page.dart';
import 'package:go_router/go_router.dart';

import 'view/electronic_home_detail_page.dart';

void main() {
  runApp(ElectronicMobileApp());
}

GlobalKey<NavigatorState> shellRouterKey = GlobalKey();

class ElectronicMobileApp extends StatelessWidget {
  ElectronicMobileApp({super.key});

  final router = GoRouter(
    initialLocation: "/a",
    routes: [
      GoRoute(
          path: "/a",
          builder: (context, state) {
            return ElectronicHomeDetailPage();
          }),
      ShellRoute(
        navigatorKey: shellRouterKey,
        builder: (context, state, child) {
          return ElectronicAppShell(
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: "/",
            builder: (context, state) {
              return const ElectronicHomePage();
            },
            routes: [
              GoRoute(
                path: "detail",
                builder: (context, state) {
                  return const ElectronicHomeDetailPage();
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
    );
  }
}
