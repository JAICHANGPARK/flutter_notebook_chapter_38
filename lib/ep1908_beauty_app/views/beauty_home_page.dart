import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BeautyHomePage extends StatelessWidget {
  const BeautyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 62,
                                  color: Colors.blueGrey,
                                ),
                                Text("Creams"),
                                Text("Day Cream"),
                                Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                                  child: Row(
                                    children: [
                                      Gap(8),
                                      Text("\$79.00"),
                                      Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: Colors.black,
                                          foregroundColor: Colors.white,
                                          child: Icon(
                                            Icons.add_shopping_cart,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                  itemBuilder: (context, index) {},
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
