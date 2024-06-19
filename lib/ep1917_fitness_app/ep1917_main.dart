import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(FitnessApp());
}

class FitnessApp extends StatelessWidget {
  FitnessApp({super.key});

  final router = GoRouter(
    routes: [
      GoRoute(
        path: "/sign-in",
        builder: (context, state) {},
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
