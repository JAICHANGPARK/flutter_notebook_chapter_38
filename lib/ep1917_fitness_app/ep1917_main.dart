import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(FitnessApp());
}


class FitnessApp extends StatelessWidget {
   FitnessApp({super.key});

  final router = GoRouter(routes: [],);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
          routerConfig: router,
    );
  }
}
