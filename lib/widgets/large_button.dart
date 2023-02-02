import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  const LargeButton(
      {super.key,
      required this.height,
      required this.width,
      required this.label,
      required this.color});
  final double height;
  final double width;
  final String label;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
      child: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
