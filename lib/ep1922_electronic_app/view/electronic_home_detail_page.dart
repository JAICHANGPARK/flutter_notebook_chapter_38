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
    );
  }
}
