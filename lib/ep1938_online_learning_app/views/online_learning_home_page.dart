import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class OnlineLearningHomePage extends StatefulWidget {
  const OnlineLearningHomePage({super.key});

  @override
  State<OnlineLearningHomePage> createState() => _OnlineLearningHomePageState();
}

class _OnlineLearningHomePageState extends State<OnlineLearningHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      color: Colors.red[50],
                      shape: BoxShape.circle,
                      border: Border.all(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                        )
                      ],
                    ),
                  ),
                  Gap(12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello!"),
                        Text(
                          "Dreamwalker",
                          style: GoogleFonts.sora(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.lightGreenAccent,
                      border: Border.all(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: Badge(
                      child: Icon(
                        Icons.notifications_active_outlined,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Placeholder(),
            ),
            Container(
              margin: EdgeInsets.all(16),
              height: 62,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(2, 2),
                    blurRadius: 1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
