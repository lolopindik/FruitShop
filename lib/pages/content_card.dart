import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final String pathPhoto;
  final double price;
  final String description;
  final String name;

  const ContentCard(
      {super.key,
      required this.pathPhoto,
      required this.price,
      required this.description,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        name,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ]));
  }
}
