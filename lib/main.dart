import 'package:flutter/material.dart';
import 'screens/input.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor: Color(0xFF0A0E21),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF0A0E21)
      )
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Input(),
    ),
  ));
}
