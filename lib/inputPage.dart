

import 'package:flutter/material.dart';
import 'cardwidget.dart';
import 'reusableCard.dart';

const ButtonColor=Color(0xFFEB1555);
const CardColor=Color(0xFF1D1E33);


class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  color: CardColor,
                  cardChild: cardwidget()
                ),
                ),
              Expanded(
                child: reusableCard(
                  color:CardColor,
                  cardChild: cardwidget(),
                  ),
                ),
            ] )
          ),
          Expanded(
            child:reusableCard(
                  color:CardColor,
                  ), 
            ),
          Expanded(
            child:Row(
              children: [
                Expanded(
                child: reusableCard(
                  color:CardColor,
                  ),
                ),Expanded(
                child: reusableCard(
                  color:CardColor,
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

