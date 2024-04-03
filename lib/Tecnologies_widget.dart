import 'package:flutter/cupertino.dart';

class TecnologiesWidget extends StatelessWidget {
  final String assetPath;
  final String name;
  final double size;
  final double? spaceBtween;

  const TecnologiesWidget({
    super.key,
    required this.assetPath,
    required this.name,
    this.size = 150,
    this.spaceBtween,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: size,
          child: Image.asset(
            assetPath,
            fit: BoxFit.cover,
          ),
        ),
        if (spaceBtween != null)
          SizedBox(
            height: spaceBtween!,
          ),
        Text(
          name,
          style: const TextStyle(fontSize: 25),
        )
      ],
    );
  }
}
