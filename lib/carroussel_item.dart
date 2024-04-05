import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CarrousselModel {
  final String company;
  final String image;
  final String link;
  final bool over;

  const CarrousselModel({
    required this.company,
    required this.image,
    required this.link,
    required this.over,
  });

  factory CarrousselModel.fromMap(Map<String, dynamic> map) {
    return CarrousselModel(
      company: map['company'] as String,
      image: map['image'] as String,
      link: map['link'] as String,
      over: map['over'],
    );
  }
}

class CarrousellItem extends StatefulWidget {
  final VoidCallback onTap;
  final CarrousselModel items;
  bool over;

  CarrousellItem({
    super.key,
    required this.items,
    required this.onTap,
    required this.over,
  });

  @override
  State<CarrousellItem> createState() => _CarrousellItemState();
}

class _CarrousellItemState extends State<CarrousellItem> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          widget.over = true;
        });
      },
      onExit: (event) {
        setState(() {
          widget.over = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: SizedBox(
                height: 50,
                child: Image.network(
                  widget.items.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.items.company,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
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
        ).animate(target: widget.over ? 1 : 0).shimmer(),
      ),
    );
  }
}
