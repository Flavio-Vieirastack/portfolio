import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

class AutoVisibility extends StatelessWidget {
  final Widget child;
  final bool invert;
  const AutoVisibility({
    Key? key,
    required this.child,
    this.invert = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!invert) {
      if (Responsive.isDesktop(context)) {
        return child;
      } else {
        return const SizedBox.shrink();
      }
    } else {
      if (!Responsive.isDesktop(context)) {
        return child;
      } else {
        return const SizedBox.shrink();
      }
    }
  }
}
