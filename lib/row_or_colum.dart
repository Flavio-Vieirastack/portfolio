import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

class RowOrColumn extends StatelessWidget {
  final List<Widget> children;
  final bool alignOnStart;
  const RowOrColumn({
    Key? key,
    required this.children,
    this.alignOnStart = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment:
            alignOnStart ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: children,
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      );
    }
  }
}
