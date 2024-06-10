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
                      return Card(
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
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: [
                                    Gap(8),
                                    Text("\$79.00"),
                                    Spacer(),
                                    CircleAvatar(
                                      backgroundColor: Colors.black,
                                    ),
                                  ],
                                ),
                              )
                            ],
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
