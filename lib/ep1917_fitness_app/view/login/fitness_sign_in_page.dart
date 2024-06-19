import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FitnessSignInPage extends StatefulWidget {
  const FitnessSignInPage({super.key});

  @override
  State<FitnessSignInPage> createState() => _FitnessSignInPageState();
}

class _FitnessSignInPageState extends State<FitnessSignInPage> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://cdn.pixabay.com/photo/2018/02/12/23/17/people-3149372_1280.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 24,
            top: 120,
            right: 24,
            bottom: 32,
            child: Column(
              children: [
                Text("Whenever you are\health is number one"),
                Gap(
                  16,
                ),
                Text("There is no instant way to a healthy life"),
                Spacer(),
                SmoothPageIndicator(controller: pageController, count: 2),
                Gap(
                  16,
                ),
                Container(
                  height: 62,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.mail_outline),
                      Text(
                        "Sign In with Email",
                      )
                    ],
                  ),
                ),
                Gap(
                  16,
                ),
                Container(
                  height: 62,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Sign In with Google",
                      )
                    ],
                  ),
                ),
                Gap(24),
                Row(
                  children: [
                    Text("Not a member?"),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
