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
                Text(
                  "Whenever you are\nhealth is number one",
                  style: TextStyle(
                    color: Color.fromRGBO(35, 195, 95, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                Gap(
                  16,
                ),
                Text(
                  "There is no instant way to a healthy life",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                SmoothPageIndicator(
                  controller: pageController,
                  count: 2,
                ),
                Gap(
                  16,
                ),
                Container(
                  height: 62,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(35, 195, 95, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.mail_outline,
                        color: Colors.white,
                      ),
                      Gap(8),
                      Text(
                        "Sign In with Email",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign In with Google",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                Gap(24),
                Row(
                  children: [
                    Text("Not a member?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white
                      ),),
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
