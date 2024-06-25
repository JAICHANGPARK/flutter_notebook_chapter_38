import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ElectronicHomePage extends StatefulWidget {
  const ElectronicHomePage({super.key});

  @override
  State<ElectronicHomePage> createState() => _ElectronicHomePageState();
}

class _ElectronicHomePageState extends State<ElectronicHomePage> {
  PageController pageController = PageController(
    viewportFraction: .8,
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 32, 20, 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(38, 39, 44, 1),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: const Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff4E53EE),
                            radius: 24,
                            foregroundColor: Colors.white,
                            child: Icon(
                              CupertinoIcons.search,
                            ),
                          ),
                          Gap(12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Search on Electis",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Electronics Shoes Anything",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 42,
              child: Placeholder(),
            ),
            SizedBox(
              height: 240,
              child: Container(
                margin: EdgeInsets.only(left: 0),
                color: Colors.white,
                child: PageView(
                  controller: pageController,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SmoothPageIndicator(

            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 72,
        child: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(29, 30, 34, 1),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
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
      ),
    );
  }
}
