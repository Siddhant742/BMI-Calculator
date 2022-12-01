import 'package:flutter/material.dart';
import 'refactoredMethods.dart';

class IconContent extends StatelessWidget {
  IconData iconName;
  String textData;

  IconContent(this.iconName, this.textData);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconName, size: 80,),
        SizedBox(
          height: 10,
        ),
        Text(
          textData,
          style: kLabelTextStyle(),
        )
      ],
    );
  }
}
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