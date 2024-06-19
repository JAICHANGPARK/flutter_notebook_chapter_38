import 'package:flutter/material.dart';

class FitnessSignInPage extends StatefulWidget {
  const FitnessSignInPage({super.key});

  @override
  State<FitnessSignInPage> createState() => _FitnessSignInPageState();
}

class _FitnessSignInPageState extends State<FitnessSignInPage> {
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
                Text("There is no instant way to a healthy life"),
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
