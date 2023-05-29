

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardwidget.dart';
import 'reusableCard.dart';
import 'constants.dart';

enum Sex{
male,
female
}


class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Sex selectedSex;
  int height=180;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
            children: [
              Expanded(
                child: reusableCard(
                    onpress: (){
                      setState(() {
                        selectedSex=Sex.male;
                      });
                    },
                    color: selectedSex==Sex.male?kActiveCardColor:kInactiveCardColor,
                    cardChild: cardwidget(icon: FontAwesomeIcons.mars,label: 'MALE',)
                  ),
                ),
              Expanded(
                child:reusableCard(
                  onpress: (){
                    setState(() {
                      selectedSex=Sex.male;
                    });
                  },
                    color: selectedSex==Sex.female?kActiveCardColor:kInactiveCardColor,
                    cardChild: cardwidget(icon: FontAwesomeIcons.venus,label: 'FEMALE',)
                    ),
                ),
            ] )
          ),
          Expanded(
            child:reusableCard(
                  color:kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text(
                          'HEIGHT',
                          style:kWidgetcardstyle
                        ),
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
                            inactiveTrackColor:Color(0xFF8D8E98),
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
                             onChanged: (double newvalue){
                              setState(() {
                                height=newvalue.round();
                              });
                             }
                             ),
                        )
                      ],
                    ),
                  ), 
            ),
          Expanded(
            child:Row(
              children: [
                Expanded(
                child: reusableCard(
                  color:kActiveCardColor,
                  ),
                ),Expanded(
                child: reusableCard(
                  color:kActiveCardColor,
                  ),
                  ),
              ])
               ),
          Container(
            color: kButtonColor,
            margin: EdgeInsets.only(top: 15.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}

