import 'package:flutter/material.dart';

class CarrousselModel {
  final String company;
  final String image;

  const CarrousselModel({
    required this.company,
    required this.image,
  });

  factory CarrousselModel.fromMap(Map<String, dynamic> map) {
    return CarrousselModel(
      company: map['company'] as String,
      image: map['image'] as String,
    );
  }
}

class CarrousellItem extends StatelessWidget {
  final CarrousselModel items;

  const CarrousellItem({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: SizedBox(
            height: 50,
            child: Image.network(
              items.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(items.company),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Back e Front",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
