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
            Text("Payment\nMagic"),
            Text(
              "The modern capital platform for\nGrowth on your terms",
            ),
            Container(
              decoration: BoxDecoration(),
              child: Text("Open Account"),
            ),
            Text("*No Credit Score Required Any Further"),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
