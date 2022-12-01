import 'package:bmi_calculator/refactoredMethods.dart';
import 'package:flutter/material.dart';

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