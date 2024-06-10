import 'package:flutter/material.dart';

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
                            )
                          ],
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
