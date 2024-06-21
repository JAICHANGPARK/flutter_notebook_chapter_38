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
      resizeToAvoidBottomInset: false,
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
                  color: Colors.grey,
                ),
              ),
              Gap(16),
              Container(
                height: 62,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    "Sign in with Apple",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Gap(12),
              Container(
                height: 62,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    "Sign in with Google",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 62,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Center(
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Positioned(
                        // left: 0,
                        // right: 0,
                        bottom: 0,
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            width: 160,
                            color: Color.fromRGBO(18, 24, 40, 1),
                            child: Center(
                              child: Text(
                                "Or sign up with email",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              // Divider(
              //   height: 62,
              //   color: Colors.grey,
              // ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: InputBorder.none,
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),

                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white,
                ),
              ),
              Gap(12),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: InputBorder.none,
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white,
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
