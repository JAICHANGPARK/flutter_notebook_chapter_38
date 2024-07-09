import 'package:flutter/material.dart';

class PetProfilePage extends StatefulWidget {
  const PetProfilePage({super.key});

  @override
  State<PetProfilePage> createState() => _PetProfilePageState();
}

class _PetProfilePageState extends State<PetProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 88,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Health Records",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 12),
                      margin: EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Vaccination History",
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
