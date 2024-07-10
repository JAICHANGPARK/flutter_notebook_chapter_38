import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class OnlineLearningStartPage extends StatelessWidget {
  const OnlineLearningStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Gap(42),
            Container(
              height: 320,
              child: SvgPicture.network(
                "https://assets-global.website-files.com/64200475697d5630983832ee/64f9ee0444229c0ff7e66a87_02.svg",
              ),
            ),
            Gap(42),
            Text(
              "Pick an accessible\ncourse and embark on\nyour digital career\njourney with ease and\nconvenience.",
              style: GoogleFonts.sora(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
