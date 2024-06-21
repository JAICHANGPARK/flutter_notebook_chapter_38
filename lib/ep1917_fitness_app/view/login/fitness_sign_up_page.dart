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
              Gap(12),
              Text(
                "Sign In",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Gap(12),
              Text(
                "Let's sign in with your Fitline account",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Gap(16),
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
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: InputBorder.none,
                  ),
                ),
              ),
              Gap(12),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                ),
              ),
              Gap(20),
              Container(
                height: 62,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Forgot password?"),
              ),
              Spacer(),
              Row(
                children: [
                  Text("Don't have an account?"),
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
        ),
      ),
    );
  }
}
