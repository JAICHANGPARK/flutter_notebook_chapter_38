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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Furniture",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
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
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Text(
                            "${furnitureTabs[index].tabTitle}[${furnitureTabs[index].count}]",
                            style: TextStyle(
                              fontSize: 16,
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
                          margin: EdgeInsets.only(right: 16),
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
                                    Gap(12),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("MINIMALIST"),
                                        Gap(4),
                                        Container(
                                          decoration: BoxDecoration(
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
                                          child: Icon(
                                            Icons.add,
                                            size: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Gap(4),
                                    Text(
                                      "UNKNOWN",
                                    ),
                                    Gap(4),
                                    Text(
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
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                  child: Text("NEW",style: TextStyle(
                                    color: Colors.white
                                  ),),
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
            Gap(16),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          items: [
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
