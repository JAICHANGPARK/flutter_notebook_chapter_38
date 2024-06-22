import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_38/ep1917_fitness_app/view/login/fitness_sign_in_page.dart';
import 'package:go_router/go_router.dart';

import 'view/home/fitness_home_page.dart';
import 'view/login/fitness_sign_up_page.dart';

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
      ),
      GoRoute(
        path: "/sign-up",
        builder: (context, state) {
          return FitnessSignUpPage();
        },
      ),
      GoRoute(
        path: "/home",
        builder: (context, state) => FitnessHomePage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
