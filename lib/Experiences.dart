import 'package:flutter/material.dart';

class Experiences extends StatelessWidget {
  final String companyNameAndWork;
  final String description;
  final String time;

  const Experiences({
    super.key,
    required this.companyNameAndWork,
    required this.description,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          companyNameAndWork,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Container(
          color: Colors.blue,
          height: 5,
          width: 50,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          description,
          textAlign: TextAlign.justify,
          style: const TextStyle(fontSize: 18),
        ),
        Text(
          "Tempo: $time",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}
