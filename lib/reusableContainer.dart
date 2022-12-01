import 'package:bmi_calculator/refactoredMethods.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconContent.dart';
import 'input.dart';


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


class RowWithNumAndUint extends StatelessWidget {
  String numberText;
  String unit;

  RowWithNumAndUint(this.numberText, this.unit);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          numberText,
          style: kNumberTextStyle(),
        ),
        Text(
          unit,
          style: kLabelTextStyle(),
        ),
      ],
    );
  }
}
