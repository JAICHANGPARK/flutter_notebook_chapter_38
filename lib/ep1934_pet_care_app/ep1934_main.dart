import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'views/pet_care_start_page.dart';

void main() {
  runApp(PetCareApp());
}

class PetCareApp extends StatelessWidget {
  PetCareApp({super.key});

  final _router = GoRouter(
    initialLocation: "/start",
    routes: [
      GoRoute(
        path: "/start",
        builder: (context, state) => PetCareStartPage(),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
