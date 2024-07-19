import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ArchitectureMainPage extends StatefulWidget {
  const ArchitectureMainPage({super.key});

  @override
  State<ArchitectureMainPage> createState() => _ArchitectureMainPageState();
}

class _ArchitectureMainPageState extends State<ArchitectureMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    "Au",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.grey[200]!,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search for projects",
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.search,
                            )),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 0,
            ),
          ],
        ),
      ),
    );
  }
}
