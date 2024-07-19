import 'package:flutter/material.dart';

import 'view/architecture_main_page.dart';


void main() {
  runApp(ArchitectureApp());
}


class ArchitectureApp extends StatelessWidget {
  const ArchitectureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ArchitectureMainPage(),
    );
  }
}
