import 'package:flutter/material.dart';

class MusicDiscoverDetailPage extends StatefulWidget {
  const MusicDiscoverDetailPage({super.key});

  @override
  State<MusicDiscoverDetailPage> createState() => _MusicDiscoverDetailPageState();
}

class _MusicDiscoverDetailPageState extends State<MusicDiscoverDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          bottom: 72,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: Container(color: Colors.black),
              ),
            ],
          ),
        ),
        Positioned.fill(
          left: 16,
          right: 16,
          top: 24,
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                        ),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
