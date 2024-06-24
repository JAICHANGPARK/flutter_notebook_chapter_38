import 'package:flutter/material.dart';

class ElectronicHomePage extends StatefulWidget {
  const ElectronicHomePage({super.key});

  @override
  State<ElectronicHomePage> createState() => _ElectronicHomePageState();
}

class _ElectronicHomePageState extends State<ElectronicHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff101014),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.emoji_objects_outlined,
            ),
            label: "Feeds",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
            ),
            label: "Likes",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: "Carts",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
            ),
            label: "Profiles",
          ),
        ],

      ),
    );
  }
}
