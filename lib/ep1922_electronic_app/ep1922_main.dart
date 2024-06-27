import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_38/ep1922_electronic_app/view/electronic_app_shell.dart';
import 'package:flutter_notebook_chapter_38/ep1922_electronic_app/view/electronic_home_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(ElectronicMobileApp());
}

class ElectronicMobileApp extends StatelessWidget {
  const ElectronicMobileApp({super.key});

  final router = GoRouter(
    routes: [
      ShellRoute(
          pageBuilder: (context, state, child){
            return ElectronicAppShell(child: child,);
          },
          routes: [
        GoRoute(
          path: "/",
        ),
      ]),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: ElectronicHomePage(),
    );
  }
}
