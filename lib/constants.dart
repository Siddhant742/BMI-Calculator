import 'package:flutter/material.dart';

Color activeContainerColour = const Color(0xFF1D1E33);
Color inactiveContainerColour = const Color(0xFF111328);
enum Gender  {male, female}
String? colText;

TextStyle kLabelTextStyle() {
  return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Color(0xFF626569));
}

TextStyle kNumberTextStyle() {
  return const TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
      // color: Color(0xFF626569)
      );
}