import 'package:flutter/material.dart';

class MusicPlayerHomePage extends StatefulWidget {
  const MusicPlayerHomePage({super.key});

  @override
  State<MusicPlayerHomePage> createState() => _MusicPlayerHomePageState();
}

class _MusicPlayerHomePageState extends State<MusicPlayerHomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(.4),
                    Colors.black.withOpacity(.6),
                    Colors.black.withOpacity(.8),
                    Colors.black,
                    Colors.black,
                    Colors.black,
                    Colors.black,
                    Colors.black,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          Positioned.fill(child: IndexedStack(
            children: [
              
            ],
          ),)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (idx) {
          setState(() {
            pageIndex = idx;
          });
        },
        backgroundColor: Colors.black,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
            ),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_library_outlined,
            ),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: "Account",
          )
        ],
      ),
    );
  }
}
