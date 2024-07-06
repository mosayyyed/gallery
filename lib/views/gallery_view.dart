import 'package:flutter/material.dart';

class GalleryView extends StatelessWidget {
  static const List<String> _imagePaths = [
    "assets/img1.jpg",
    "assets/img2.jpg",
    "assets/img3.jpg",
    "assets/img4.jpg",
    "assets/img1.jpg",
    "assets/img2.jpg",
    "assets/img3.jpg",
    "assets/img4.jpg",
    "assets/img1.jpg",
    "assets/img2.jpg",
    "assets/img3.jpg",
    "assets/img4.jpg",
  ];

  const GalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Gallery',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 30,
            color: Colors.grey[700],
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(22.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 22.0,
          crossAxisSpacing: 22.0,
          childAspectRatio: 0.85,
        ),
        itemCount: _imagePaths.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(22.0),
            child: Image.asset(
              _imagePaths[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
