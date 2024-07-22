import 'package:flutter/material.dart';

class PaymentsStartPage extends StatefulWidget {
  const PaymentsStartPage({super.key});

  @override
  State<PaymentsStartPage> createState() => _PaymentsStartPageState();
}

class _PaymentsStartPageState extends State<PaymentsStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text("Pay"),
                Icon(
                  Icons.check_circle,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                  ),
                ),
              ],
            ),
            Text("Payment"),
            Text("Magic"),
            Text("The modern capital platform for\nGrowth on your terms",),
          ],
        ),
      ),
    );
  }
}
