import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/furniture_tab.dart';

class FurnitureMainPage extends StatefulWidget {
  const FurnitureMainPage({super.key});

  @override
  State<FurnitureMainPage> createState() => _FurnitureMainPageState();
}

class _FurnitureMainPageState extends State<FurnitureMainPage> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Furniture",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "discover\nour product",
                style: GoogleFonts.montserrat(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                bottom: 8,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 42,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: furnitureTabs.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              tabIndex = index;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Text(
                              "${furnitureTabs[index].tabTitle}[${furnitureTabs[index].count}]",
                              style: TextStyle(
                                fontSize: 16,
                                color: tabIndex == index ? Colors.black : Colors.grey,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 260,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 170,
                          margin: const EdgeInsets.only(right: 16),
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 12,
                                top: 12,
                                bottom: 12,
                                right: 12,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(child: Container()),
                                    const Gap(12),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("MINIMALIST"),
                                        const Gap(4),
                                        Container(
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              top: BorderSide(
                                                width: 1.5,
                                              ),
                                              left: BorderSide(
                                                width: 1.5,
                                              ),
                                              right: BorderSide(
                                                width: .5,
                                              ),
                                              bottom: BorderSide(
                                                width: .5,
                                              ),
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.add,
                                            size: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Gap(4),
                                    const Text(
                                      "UNKNOWN",
                                    ),
                                    const Gap(4),
                                    const Text(
                                      "\$580.00",
                                    )
                                  ],
                                ),
                              ),
                              if (index == 0)
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                    ),
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                    child: const Text(
                                      "NEW",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            const Gap(16),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "recent product",
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.grey,
                            ),
                            child: const Text(
                              "SEE MORE",
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(),
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                            child: Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 100,
                                  color: Colors.blue,
                                ),
                                const Gap(12),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "COMFY CUSSION",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Gap(6),
                                      Row(
                                        children: [
                                          Text(
                                            "\$900.00",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Gap(12),
                                          Text(
                                            "\$1,320.00",
                                            style:
                                                TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        width: 1.5,
                                      ),
                                      left: BorderSide(
                                        width: 1.5,
                                      ),
                                      right: BorderSide(
                                        width: .5,
                                      ),
                                      bottom: BorderSide(
                                        width: .5,
                                      ),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    size: 12,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, _) => const Divider(),
                        itemCount: 10,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
              ),
              label: "Personal",
            )
          ],
        ),
      ),
    );
  }
}
