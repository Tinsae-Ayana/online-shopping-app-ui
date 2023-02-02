import 'package:flutter/material.dart';

class ColoredDot extends StatelessWidget {
  const ColoredDot({Key? key, required this.color, this.isSelected = false})
      : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      padding: const EdgeInsets.all(2.4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: isSelected ? Border.all(color: color) : null,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFF3D82AE))),
      ),
    );
  }
}
