import 'package:flutter/cupertino.dart';
import 'package:portfolio/responsive.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class CustomScroll extends StatelessWidget {
  final ScrollController scrollController;
  final Widget child;

  const CustomScroll(
      {super.key, required this.child, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return WebSmoothScroll(
        controller: scrollController,
        child: child,
        scrollOffset: 100,
        animationDuration: 500,
      );
    } else {
      return child;
    }
  }
}
