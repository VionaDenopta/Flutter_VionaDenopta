import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    "image1.jpg",
    "image2.jpg",
    "image3.jpg",
    "image4.jpg",
    "image5.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gallery"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                imagePreview(context, images[index]);
              },
              child: GridTile(child: Image.asset("images/${images[index]}")),
            );
          },
        ),
      ),
    );
  }

  void imagePreview(context, image) {
    showBottomSheet(
      context: context,
      builder: (context) {
        return InkResponse(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return SimpleDialog(
                  // title: const Text("Buka di halaman baru?"),
                  children: [
                    Image.asset("images/$image"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/view",
                                arguments: image);
                          },
                          child: const Text("Ya"),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Tidak"),
                        ),
                      ],
                    ),
                  ],
                );
              },
            );
          },
          child: Image.asset(
            "images/$image",
          ),
        );
      },
    );
  }
}
