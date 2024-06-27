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
            const Gap(12),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                height: 42,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tabs.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTab = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedTab == index ? const Color(0xff4E53EE) : Colors.white.withOpacity(.1),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        margin: const EdgeInsets.only(right: 12),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Center(
                            child: Text(
                          "${tabs[index]}",
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        )),
                      ),
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
                      height: 200,
                      child: Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: PageView(
                          padEnds: false,
                          controller: pageController,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(213, 196, 251, 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.all(20),
                              margin: const EdgeInsets.only(right: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Try Bold",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  const Text(
                                    "Experience",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  const Gap(8),
                                  const Text("S think diffrents"),
                                  const Gap(24),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    child: const Text(
                                      "Discount 40%",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.red,
                              ),
                              margin: const EdgeInsets.only(right: 12),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.orange,
                              ),
                              margin: const EdgeInsets.only(right: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Gap(24),
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
                    const Gap(12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
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
                            child: const Text(
                              "See all",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 240,
                      decoration: const BoxDecoration(

                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 12),

                            width: 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.2),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          child: Container(
                                            child: const Row(
                                              children: [],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const Gap(8),
                                const Text(
                                  "Alpha 9 Mark 3 Body Only",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                                const Gap(4),
                                const Text("RP 24.500.000",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),),
                              ],
                            ),
                          );
                        },
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
