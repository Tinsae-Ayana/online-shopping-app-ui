import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, required this.icon});

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(30)),
      child: icon,
    );
  }
}
