import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardwidget.dart';
import 'reusableCard.dart';
import 'constants.dart';
import 'Calculatorbrain.dart';
import 'result.dart';
import 'calculatebutton.dart';
import 'customIconButton.dart';

enum Sex { male, female }


// ignore: use_key_in_widget_constructors
class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Sex? selectedSex;
  int height = 180;
  int weight = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(children: [
            Expanded(
              child: ReusableCard(
                  onpress: ()=>
                    setState(() {
                      selectedSex = Sex.male;
                    })
                  ,
                  color: selectedSex == Sex.male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: cardwidget(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  )),
            ),
            Expanded(
              child: ReusableCard(
                  onpress: ()=>
                    setState(() {
                      selectedSex = Sex.female;
                    }),
                  color: selectedSex == Sex.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: cardwidget(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  )),
            ),
          ])),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kWidgetcardstyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: kWidgetcardstyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newvalue) {
                          setState(() {
                            height = newvalue.round();
                          });
                        }),
                  )
                ],
              ), onpress: (){},
            ),
          ),
          Expanded(
              child: Row(
                children: [
            Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WEIGHT',
                      style: kWidgetcardstyle,
                    ),
                    Text(
                      weight.toString(),
                      style: kNumberStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            }),
                        CustomIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            })
                      ],
                    )
                  ],
                ), onpress: (){},
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style: kWidgetcardstyle,
                    ),
                    Text(
                      age.toString(),
                      style: kNumberStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        CustomIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            }),
                        CustomIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            })
                      ],
                    )
                  ],
                ), onpress: (){},
              ),
            ),
          ])),
          CalculateButton(
            label: 'CALCULATE',
            onTap: () {
              Calculatorbrain calc =
                  Calculatorbrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Result(
                          bmi: calc.calculatebmi(),
                          advice: calc.getResult(),
                          condition: calc.getAdvice(),
                        )),
              );
            }
          ),
        ],
      ),
    );
  }
}
