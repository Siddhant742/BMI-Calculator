import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'reusableContainer.dart';
import 'iconContent.dart';
import 'constants.dart';



class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);
  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {

  double sliderValue = 165;
  Color maleColor = inactiveContainerColour;
  Color femaleColor = inactiveContainerColour;
  Gender? genderType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    genderType = Gender.male;
                  });
                },
                child: ReusableContainer(
                  genderType == Gender.male
                      ? activeContainerColour
                      : inactiveContainerColour,
                  150,
                  IconContent(Icons.male, 'Male'),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    genderType = Gender.female;
                  });
                },
                child: ReusableContainer(
                  genderType == Gender.female
                      ? activeContainerColour
                      : inactiveContainerColour,
                  150,
                  IconContent(Icons.female, 'Female'),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: ReusableContainer(
                  activeContainerColour,
                  150,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('HEIGHT',
                        style: kLabelTextStyle(),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(sliderValue.round().toString(),
                            style: kNumberTextStyle(),),
                          Text('cm',
                          style: kLabelTextStyle(),
                          ),
                        ],
                      ),
                      Slider(value: sliderValue,
                          activeColor: Color(0xFFEB1555),
                          thumbColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF7C7879),
                          min: 30,
                          max: 240,
                          // divisions: 5,
                          label: sliderValue.round().toString(),
                          onChanged:(double value){
                            setState(() {
                              sliderValue = value;
                            });
                          }),
                    ],
                  ),
                )),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ReusableContainer(
                activeContainerColour,
                170,
                Column(),
              ),
            ),
            Expanded(
              child: ReusableContainer(
                activeContainerColour,
                170,
                Column(),
              ),
            ),
          ],
        ),
        Container(
          // margin: EdgeInsets.only(top: 10),
          color: Color(0xFFEB1555),
          width: double.infinity,
          height: 43.428,
          // margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Calculate',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }
}
