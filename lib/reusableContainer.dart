import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final Widget containerChild;
  final Color colour;
  final double heightt;

  ReusableContainer(this.colour, this.heightt, this.containerChild,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: containerChild,
      margin: EdgeInsets.all(15),
      height: heightt,
      width: 173,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}