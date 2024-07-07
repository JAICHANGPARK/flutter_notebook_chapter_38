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
            decoration: BoxDecoration(
              color: Colors.grey[50],
            ),
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
                ],
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Feeding Schedule",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Edit",
                                    ),
                                  ),
                                ],
                              ),
                              ListTile(
                                leading: Icon(Icons.timer),
                                title: Text("Morning"),
                                subtitle: Text(
                                  "At 7, Alarms before 10 mins",
                                ),
                                trailing: Checkbox(
                                  value: true,
                                  onChanged: (v) {},
                                ),
                              ),
                              Divider(
                                endIndent: 120,
                                indent: 120,
                              ),
                              ListTile(
                                leading: Icon(Icons.timer_sharp),
                                title: Text("Evening"),
                                subtitle: Text(
                                  "At 6, Alarms before 10 mins",
                                ),
                                trailing: Checkbox(
                                  value: false,
                                  onChanged: (v) {},
                                ),
                              ),
                              Divider(
                                endIndent: 120,
                                indent: 120,
                              ),
                              ListTile(
                                leading: Icon(Icons.add_circle_outline),
                                title: Text("Add New"),
                                subtitle: Text(
                                  "Set Alarm",
                                ),
                                trailing: Checkbox(
                                  value: false,
                                  onChanged: (v) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
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
