import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FurnitureCartPage extends StatefulWidget {
  const FurnitureCartPage({super.key});

  @override
  State<FurnitureCartPage> createState() => _FurnitureCartPageState();
}

class _FurnitureCartPageState extends State<FurnitureCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit_square,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Shopping\nCart",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          Expanded(child: Placeholder()),
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "TOTAL",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                      Text(
                        '\$2.010,00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      )
                    ],
                  ),
                ),
                Divider(),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 18
                    )
                  ),
                  onPressed: () {},
                  child: Text("CHECKOUT"),
                ),
                Gap(16),
              ],
            ),
          )
        ],
      ),
    );
  }
}
