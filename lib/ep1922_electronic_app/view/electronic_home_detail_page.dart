import 'package:flutter/material.dart';

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
            child: Row(
              children: [],
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
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.green,
                        child: Column(),
                      );
                    }),
              ))
        ],
      ),
    );
  }
}
