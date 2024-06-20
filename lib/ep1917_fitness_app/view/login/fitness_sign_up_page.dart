import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class FitnessSignUpPage extends StatefulWidget {
  const FitnessSignUpPage({super.key});

  @override
  State<FitnessSignUpPage> createState() => _FitnessSignUpPageState();
}

class _FitnessSignUpPageState extends State<FitnessSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 24, 40, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  context.go("/sign-in");
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                ),
                color: Colors.white,
              ),
              Text("Sign In"),
              Text(
                "Let's sign in with your Fitline account",
              ),
              Container(
                height: 62,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              Gap(12),
              Container(
                height: 62,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              Divider(
                height: 62,
                color: Colors.grey,
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: InputBorder.none,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
