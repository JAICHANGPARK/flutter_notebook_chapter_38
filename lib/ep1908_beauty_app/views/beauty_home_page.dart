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
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
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
                                    height: 74,
                                    width: 62,
                                    color: Colors.blueGrey,
                                  ),
                                  Gap(12),
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
                  Gap(12),
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
                                    height: 74,
                                    width: 62,
                                    color: Colors.blueGrey,
                                  ),
                                  Gap(12),
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
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(232, 236, 245, 1),
                    Color.fromRGBO(232, 236, 245, 1),
                    Colors.white.withOpacity(.5),
                    Colors.white.withOpacity(.3)

                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              
            ),
          )
        ],
      ),
    );
  }
}
