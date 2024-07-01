import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FurnitureCartPage extends StatefulWidget {
  const FurnitureCartPage({super.key});

  @override
  State<FurnitureCartPage> createState() => _FurnitureCartPageState();
}

class _FurnitureCartPageState extends State<FurnitureCartPage> {
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
                  itemCount: 10,
                  separatorBuilder: (_, __) => Divider(),
                  itemBuilder: (context, index) {
                    return Dismissible(
                      key: ValueKey(index),
                      child: Row(
                        children: [
                          Container(
                            height: 64,
                            width: 64,
                            child: Placeholder(),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "STANCE DINNING",
                                ),
                                Text(
                                  "\$560.00",
                                )
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                            ),
                          ),
                          Text("1"),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
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
                        '\$2.010,00',
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
