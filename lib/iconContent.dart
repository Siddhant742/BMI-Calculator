import 'package:flutter/material.dart';
import 'constants.dart';

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
