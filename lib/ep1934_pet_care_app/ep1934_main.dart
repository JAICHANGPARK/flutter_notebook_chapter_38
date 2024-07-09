import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'views/pet_care_home_page.dart';
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
        builder: (context, state) => const PetCareStartPage(),
      ),
      GoRoute(
        path: "/",
        builder: (context, state) => const PetCareHomePage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          surfaceTintColor: Colors.white,
          foregroundColor: Colors.grey,
          titleTextStyle: GoogleFonts.pacifico(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.grey,
          elevation: 20,
        ),
        cardTheme: const CardTheme(
          color: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 4,
        ),
        checkboxTheme: CheckboxThemeData(
          checkColor: WidgetStateProperty.all(Colors.white),
          fillColor: WidgetStateProperty.resolveWith(
            (widgetState) {
              if(widgetState.contains(WidgetState.selected)){
                return Colors.green;
              }
            },
          ),
        ),
      ),
    );
  }
}
