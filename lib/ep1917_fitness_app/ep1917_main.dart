import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_38/ep1917_fitness_app/view/login/fitness_sign_in_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(FitnessApp());
}

class FitnessApp extends StatelessWidget {
  FitnessApp({super.key});

  final router = GoRouter(
    initialLocation: "/sign-in",
    routes: [
      GoRoute(
        path: "/sign-in",
        builder: (context, state) {
          return FitnessSignInPage();
        },
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
