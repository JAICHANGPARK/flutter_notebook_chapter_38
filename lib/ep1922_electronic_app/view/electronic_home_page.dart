import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ElectronicHomePage extends StatefulWidget {
  const ElectronicHomePage({super.key});

  @override
  State<ElectronicHomePage> createState() => _ElectronicHomePageState();
}

class _ElectronicHomePageState extends State<ElectronicHomePage> {
  PageController pageController = PageController(
    viewportFraction: .9,
    initialPage: 0,
  );

  List<String> tabs = [
    "Promo",
    "Best Deals",
    "Windy Basic",
    "Spring",
    "Winter",
  ];

  int selectedTab = 0;

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
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Container(
                margin: EdgeInsets.only(left: 20),
                height: 52,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: selectedTab == index ? Color(0xff4E53EE) : Colors.white.withOpacity(.1),
                      ),
                      child: Text("${tabs[index]}"),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 220,
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        color: Colors.white,
                        child: PageView(
                          padEnds: false,
                          controller: pageController,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                              ),
                              margin: EdgeInsets.only(right: 12),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                              ),
                              margin: EdgeInsets.only(right: 12),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                              ),
                              margin: EdgeInsets.only(right: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                    Gap(24),
                    Center(
                      child: SizedBox(
                        height: 16,
                        child: SmoothPageIndicator(
                          controller: pageController,
                          count: 4,
                          effect: WormEffect(
                            dotHeight: 16,
                            activeDotColor: Colors.white,
                            dotColor: Colors.white.withOpacity(.1),
                            type: WormType.thin,
                            dotWidth: 24,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Electis Choice",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.grey,
                            ),
                            onPressed: () {},
                            child: Text(
                              "See all",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
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
