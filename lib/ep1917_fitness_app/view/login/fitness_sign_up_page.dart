import 'package:flutter/material.dart';
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
        child: Column(
          children: [
            IconButton(
              onPressed: () {
                context.go("/sign-in");
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
              ),
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
