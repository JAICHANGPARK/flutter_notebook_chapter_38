import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_38/ep1938_online_learning_app/views/online_learning_home_page.dart';
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
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return OnlineLearningHomePage();
                    },
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                margin: EdgeInsets.symmetric(horizontal: 24),
                padding: EdgeInsets.symmetric(
                  vertical: 12,
                ),
                child: Center(
                  child: Text(
                    "Let's Start Learning!",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            Gap(42),
          ],
        ),
      ),
    );
  }
}
