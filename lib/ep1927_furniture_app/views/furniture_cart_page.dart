import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_38/ep1927_furniture_app/model/furniture.dart';
import 'package:gap/gap.dart';

class FurnitureCartPage extends StatefulWidget {
  const FurnitureCartPage({super.key});

  @override
  State<FurnitureCartPage> createState() => _FurnitureCartPageState();
}

class _FurnitureCartPageState extends State<FurnitureCartPage> {
  double discount = 700;
  double totalPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit_square,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Shopping\nCart",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemCount: furnitures.length,
                  separatorBuilder: (_, __) => Divider(),
                  itemBuilder: (context, index) {
                    final furniture = furnitures[index];
                    return Dismissible(
                      background: Container(
                        color: Colors.black,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete_outline,
                              ),
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      onDismissed: (direction) {
                        print("onDismissed: $direction");
                      },
                      confirmDismiss: (direction) async{
                        print(direction);
                        return true;
                      },
                      direction: DismissDirection.endToStart,
                      key: ValueKey(index),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              child: Image.network(
                                "${furniture.img}",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Gap(12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${furniture.title}",
                                  ),
                                  Text(
                                    "\$${((furniture.price ?? 0) * (furniture.count ?? 1)).toStringAsFixed(2)} ",
                                  )
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  furnitures[index].count = (furniture.count ?? 1) - 1;
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                              ),
                            ),
                            Text("${furniture.count}"),
                            IconButton(
                              onPressed: () {
                                furnitures[index].count = 1 + (furniture.count ?? 1);
                                furnitures.forEach((element) {
                                  totalPrice += (element.price ?? 0) * (element.count ?? 1);
                                });
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.add,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("PROMO CODE"),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "SUBMIT",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("SUB TOTAL"),
                          Text("\$${totalPrice.toStringAsFixed(2)}"),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("DISCOUNT"),
                          Text("\$-${discount}"),
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                ),
              )
            ],
          )),
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "TOTAL",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                        ),
                      ),
                      Text(
                        '\$${totalPrice - discount}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                        ),
                      )
                    ],
                  ),
                ),
                Divider(),
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.white, textStyle: TextStyle(fontSize: 18)),
                  onPressed: () {},
                  child: Text("CHECKOUT"),
                ),
                Gap(16),
              ],
            ),
          )
        ],
      ),
    );
  }
}
