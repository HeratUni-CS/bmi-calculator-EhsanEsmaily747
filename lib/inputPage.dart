

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
                    color: selectedSex==Sex.male?activeCardColor:inactiveCardColor,
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
                    color: selectedSex==Sex.female?activeCardColor:inactiveCardColor,
                    cardChild: cardwidget(icon: FontAwesomeIcons.venus,label: 'FEMALE',)
                    ),
                ),
            ] )
          ),
          Expanded(
            child:reusableCard(
                  color:activeCardColor,
                    cardChild: Column(
                      
                    ),
                  ), 
            ),
          Expanded(
            child:Row(
              children: [
                Expanded(
                child: reusableCard(
                  color:activeCardColor,
                  ),
                ),Expanded(
                child: reusableCard(
                  color:activeCardColor,
                  ),
                  ),
              ])
               ),
          Container(
            color: ButtonColor,
            margin: EdgeInsets.only(top: 15.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}

