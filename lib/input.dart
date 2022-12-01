import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableContainer.dart';
import 'iconContent.dart';
import 'constants.dart';
import 'refactoredMethods.dart';

double sliderValue = 165;


class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);
  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  Color maleColor = inactiveContainerColour;
  Color femaleColor = inactiveContainerColour;
  Gender? genderType;
  int weight = 65;
  int age = 25;

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
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle(),
                  ),
                  RowWithNumAndUint(sliderValue.round().toString(), 'cm'),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30,
                      ),
                      thumbColor: const Color(0xFFEB1555),
                      overlayColor: const Color(0x29EB1555),
                      activeTrackColor: Color(0xFFEB1555),
                      inactiveTrackColor: Color(0xFF7C7879),
                      trackHeight: 2,
                    ),
                    child: Slider(
                        value: sliderValue,
                        min: 30,
                        max: 240,
                        onChanged: (double value) {
                          setState(() {
                            sliderValue = value;
                          });
                        }),
                  ),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WEIGHT',
                      style: kLabelTextStyle(),
                    ),
                    RowWithNumAndUint(weight.toString(), 'kg'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(FontAwesomeIcons.minus,(){
                          setState(() {
                            weight--;
                          });
                        }),
                        SizedBox(width: 15,),
                        RoundIconButton(FontAwesomeIcons.plus,(){
                          setState(() {
                            weight++;
                          });
                        })

                      ],
                    ),


                  ],
                ),
              ),
            ),
            Expanded(
              child: ReusableContainer(
                activeContainerColour,
                170,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style: kLabelTextStyle(),
                    ),
                    RowWithNumAndUint(age.toString(), 'yrs'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(FontAwesomeIcons.minus,(){
                          setState(() {
                            age--;
                          });
                        }),
                        SizedBox(width: 15,),
                        RoundIconButton(FontAwesomeIcons.plus,(){
                          setState(() {
                            age++;
                          });
                        })

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ResultPage()),
            );
          },
          child: Container(
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
        ),
      ],
    );
  }
}




