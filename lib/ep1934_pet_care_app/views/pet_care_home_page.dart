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
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 240,
            child: Placeholder(),
          ),
          Expanded(
            child: Container(

              decoration: BoxDecoration(

                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200]!,
                    offset: Offset(0, -2),
                    spreadRadius: 3,
                    blurRadius: 2,
                  )
                ]
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets_outlined),
            label: "Pet Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.connect_without_contact),
            label: "Community",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
