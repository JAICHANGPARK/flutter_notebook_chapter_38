import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ArchitectureMainPage extends StatefulWidget {
  const ArchitectureMainPage({super.key});

  @override
  State<ArchitectureMainPage> createState() => _ArchitectureMainPageState();
}

class _ArchitectureMainPageState extends State<ArchitectureMainPage> {
  List<String> tabs = [
    "All",
    "Residential",
    "Interior",
    "Commercial & Office",
  ];

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
                  const Text(
                    "Au",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 38,
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.grey[200]!,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Search for projects",
                          hintStyle: TextStyle(
                            fontSize: 12,
                          ),
                          isDense: true,
                          // contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              height: 0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 24),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(4),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 4,
              ),
              child: const Text(
                "NEW SHOTS DAILY",
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 12,
                ),
              ),
            ),
            const Text(
              "Discover the world's top\narchitexts & creatives",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const Gap(16),
            const Text(
              "Save hours of Design research with our library of 100,000+\n"
              "shots from the world's best architects",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            const Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.brown[100]!,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Center(
                    child: Text('Join for free'),
                  ),
                ),
                const Gap(12),
                Container(
                  width: 120,
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.grey[200]!,
                  )),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Log in'),
                      Gap(6),
                      CircleAvatar(
                        radius: 8,
                        child: Icon(
                          Icons.arrow_forward,
                          size: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              height: 42,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Shots",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.tune,
                          size: 16,
                        ),
                        Gap(12),
                        Text(
                          "Weekly",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 32,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
