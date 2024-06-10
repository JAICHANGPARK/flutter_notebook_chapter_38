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
                    itemBuilder: (itemBuilder),
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
