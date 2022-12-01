import 'package:bmi_calculator/refactoredMethods.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconContent.dart';
import '../screens/input.dart';


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
      width: double.infinity,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}



