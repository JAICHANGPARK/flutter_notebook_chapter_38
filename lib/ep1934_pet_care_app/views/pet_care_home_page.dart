import 'package:flutter/material.dart';

class PetCareHomePage extends StatefulWidget {
  const PetCareHomePage({super.key});

  @override
  State<PetCareHomePage> createState() => _PetCareHomePageState();
}

class _PetCareHomePageState extends State<PetCareHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(
          "Pet Care",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          Badge(
            child: Icon(
              Icons.notifications,
            ),
          ),
          SizedBox(width: 16,),
        ],
      ),
    );
  }
}
