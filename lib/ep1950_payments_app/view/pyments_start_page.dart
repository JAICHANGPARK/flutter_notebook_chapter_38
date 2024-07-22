import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PaymentsStartPage extends StatefulWidget {
  const PaymentsStartPage({super.key});

  @override
  State<PaymentsStartPage> createState() => _PaymentsStartPageState();
}

class _PaymentsStartPageState extends State<PaymentsStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(88, 184, 255, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Pay",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Gap(8),
                  Icon(
                    Icons.check_circle,
                    size: 16,
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
              Gap(42),
              Text(
                "Payment\nMagic",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 54,
                ),
                textAlign: TextAlign.center,
              ),
              Gap(32),
              Text(
                "The modern capital platform for\nGrowth on your terms",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 24,
                  bottom: 16,
                ),
                padding: EdgeInsets.symmetric(horizontal: 42, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Text(
                  "Open Account",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Text("*No Credit Score Required Any Further"),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Gap(12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "For Partners",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Gap(8),
                          Text("Owners On Your Platform.")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Gap(16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Gap(12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "For Enterprises",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Gap(8),
                          Text("Owners On Your Platform.")
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
