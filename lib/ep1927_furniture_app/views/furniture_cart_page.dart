import 'package:flutter/material.dart';

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
       children: [
         
       ],
     ),
    );
  }
}
