import 'package:flutter/cupertino.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    super.key,
    required this.color,
    this.child,
  });
  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(
          width: 2,
          color: color,
        ), // Border.all
      ), // BoxDecoration
      child: Center(child: child),
    ); // Container
  }
}
