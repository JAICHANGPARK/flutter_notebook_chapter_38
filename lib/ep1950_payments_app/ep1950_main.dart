import 'package:flutter/material.dart';

import 'view/pyments_start_page.dart';

void main() {
  runApp(
    PaymentsApp(),
  );
}

class PaymentsApp extends StatelessWidget {
  const PaymentsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaymentsStartPage(),

    );
  }
}
