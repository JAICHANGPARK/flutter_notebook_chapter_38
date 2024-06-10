import 'package:flutter/material.dart';

class BeautyDetailPage extends StatefulWidget {
  const BeautyDetailPage({super.key});

  @override
  State<BeautyDetailPage> createState() => _BeautyDetailPageState();
}

class _BeautyDetailPageState extends State<BeautyDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://cdn.pixabay.com/photo/2023/11/10/02/30/woman-8378634_1280.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      // body: Stack(
      //   children: [
      //     Positioned.fill(
      //       child: Image.network(
      //         "https://cdn.pixabay.com/photo/2023/11/10/02/30/woman-8378634_1280.jpg",
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
