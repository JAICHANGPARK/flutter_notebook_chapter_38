import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(PetCareApp());
}

class PetCareApp extends StatelessWidget {
  const PetCareApp({super.key});

  final _router = GoRouter(routes: [
    
    GoRoute(path: "/start", builder: (context, state)=>PetCareStartPage())
    
  ]);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(

    );
  }
}
