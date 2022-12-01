import 'package:flutter/material.dart';
import 'screens/input.dart';

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

TextStyle kTitleTextStyle(){
  return const TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.bold,
  );
}

TextStyle kResultTextStyle(){
  return const TextStyle(
    fontSize: 22,
    color: Color(0xFF24D976),
    fontWeight: FontWeight.bold,
  );
}

TextStyle kBMITextStyle(){
  return const TextStyle(
    fontSize: 100,
    fontWeight: FontWeight.bold,
  );
}
