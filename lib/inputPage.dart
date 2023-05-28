

import 'package:flutter/material.dart';

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
                ),
                ),
              Expanded(
                child: reusableCard(
                  color:CardColor,
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


class reusableCard extends StatelessWidget {

  reusableCard({required this.color});
  
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(11.0),
      ),
    );
  }
}