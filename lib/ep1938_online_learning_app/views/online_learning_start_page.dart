import 'package:flutter/material.dart';



class OnlineLearningStartPage extends StatelessWidget {
  const OnlineLearningStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 360,
              child: Image.network("https://assets-global.website-files.com/64200475697d5630983832ee/64f9ee0444229c0ff7e66a87_02.svg",),
            )
          ],
        ),
      ),
    );
  }
}
