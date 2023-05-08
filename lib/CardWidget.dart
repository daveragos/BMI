// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.colour, this.childWij, this.clicked});
  final Color colour;
  final Widget? childWij;
  final void Function()? clicked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: clicked,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: childWij,
      ),
    );
  }
}
