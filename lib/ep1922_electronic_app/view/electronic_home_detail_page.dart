import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ElectronicHomeDetailPage extends StatefulWidget {
  const ElectronicHomeDetailPage({super.key});

  @override
  State<ElectronicHomeDetailPage> createState() => _ElectronicHomeDetailPageState();
}

class _ElectronicHomeDetailPageState extends State<ElectronicHomeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        foregroundColor: Colors.white,
        title: Text("Gadget Day"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 72,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: const Color(0xff4E53EE),
                  ),
                  child: Text(
                    "Latest",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.white.withOpacity(.2),
                  ),
                  child: Text(
                    "Popular",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.white.withOpacity(.2),
                  ),
                  child: Text(
                    "Top Deals",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.tune),
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: .8,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromRGBO(50, 54, 63, 1),
                            ),
                            padding: EdgeInsets.all(8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text("NEW"),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 18,
                                      ),
                                      Text(
                                        "4.6",
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Gap(8),
                        Text(
                          "M Action 3",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Gap(8),
                        Text(
                          "RP 5.4000.000",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ))
        ],
      ),
    );
  }
}
