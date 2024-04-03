import 'package:flutter/cupertino.dart';

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
        const SizedBox(
          height: 5,
        ),
        Text(
          description,
          textAlign: TextAlign.justify,
        ),
        Text(
          "Tempo: $time",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
