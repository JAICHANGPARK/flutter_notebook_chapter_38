import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_38/ep1922_electronic_app/view/electronic_app_shell.dart';
import 'package:flutter_notebook_chapter_38/ep1922_electronic_app/view/electronic_home_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(ElectronicMobileApp());
}

class ElectronicMobileApp extends StatelessWidget {
   ElectronicMobileApp({super.key});

  final router = GoRouter(
    routes: [
      ShellRoute(
          builder: (context, state, child) {
            return ElectronicAppShell(
              child: child,
            );
          },
          routes: [
            GoRoute(
                path: "/",
                builder: (context, state) {
                  return ElectronicHomePage();
                }),
          ]),
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
