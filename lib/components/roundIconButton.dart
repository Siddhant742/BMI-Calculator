import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  final IconData icon;
  final UpdateNumber;
  // final Function UpdateNumber;
  RoundIconButton(this.icon,this.UpdateNumber){}
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: UpdateNumber,
      child: Icon(icon),
      constraints: const BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      shape: CircleBorder(),
      elevation: 2.0,
      fillColor: Color(0xFF2C2E3A),);
  }
}