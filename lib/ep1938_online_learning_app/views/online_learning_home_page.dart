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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                        )
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  Gap(12),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                        )
                      ],
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "What would you\nlike to learn today",
                          style: GoogleFonts.sora(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Gap(16),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "Let's Start",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                      left: 16,
                      bottom: 16
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Top Category",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gap(16),
                        SizedBox(
                          height: 64,
                          child: Placeholder(),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Popular courses",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "View all",
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 240,
                  )
                ],
              ),
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
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.home_filled,
                        ),
                        Gap(4),
                        Text(
                          "Home",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_outline,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chat_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person_3_outlined,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
