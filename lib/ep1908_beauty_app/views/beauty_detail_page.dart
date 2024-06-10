import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BeautyDetailPage extends StatefulWidget {
  const BeautyDetailPage({super.key});

  @override
  State<BeautyDetailPage> createState() => _BeautyDetailPageState();
}

class _BeautyDetailPageState extends State<BeautyDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://cdn.pixabay.com/photo/2023/11/10/02/30/woman-8378634_1280.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(.2),
                            border: Border.all(
                              width: .5,
                              color: Colors.white,
                            ),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_new,
                            ),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: ClipRRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                            child: Container(
                              width: 140,
                              height: 42,
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.white.withOpacity(.2),
                                border: Border.all(
                                  width: .5,
                                  color: Colors.white,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Skin age: 21",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(.2),
                            border: Border.all(
                              width: .5,
                              color: Colors.white,
                            ),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.tune,
                            ),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                height: 340,
                margin: EdgeInsets.only(
                  left: 24,
                  bottom: 24,
                ),
                decoration: BoxDecoration(
                    // color: Colors.red,
                    ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 24,
                      bottom: 0,
                      left: 0,
                      child: ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: Colors.white.withOpacity(.2),
                              border: Border.all(
                                width: .5,
                                color: Colors.white,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Skin age: 21",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: 16,
                      bottom: 16,
                      child: Column(
                        children: [
                          Text(
                            "Special For You",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                            ),
                          ),
                          Gap(12),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 16),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                              ),
                              child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: SizedBox(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => BeautyDetailPage(),
                                            ),
                                          );
                                        },
                                        child: Card(
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 74,
                                                  width: 62,
                                                  color: Colors.blueGrey,
                                                ),
                                                const Gap(12),
                                                const Text("Creams"),
                                                Gap(4),
                                                const Text(
                                                  "Day Cream",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Gap(8),
                                                Container(
                                                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                                                  child: const Row(
                                                    children: [
                                                      Gap(8),
                                                      Text(
                                                        "\$79.00",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Padding(
                                                        padding: EdgeInsets.all(2.0),
                                                        child: CircleAvatar(
                                                          radius: 16,
                                                          backgroundColor: Colors.black,
                                                          foregroundColor: Colors.white,
                                                          child: Icon(
                                                            Icons.add_shopping_cart,
                                                            size: 16,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Gap(12),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                "View all products",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // body: Stack(
      //   children: [
      //     Positioned.fill(
      //       child: Image.network(
      //         "https://cdn.pixabay.com/photo/2023/11/10/02/30/woman-8378634_1280.jpg",
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
