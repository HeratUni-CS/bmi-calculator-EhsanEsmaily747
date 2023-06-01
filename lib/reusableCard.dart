
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({required this.color,required this.cardChild,required this.onpress});
  

  final Color color;
  final Widget cardChild;
  final Function() onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(11.0),
          
        ),
      ),
    );
  }
}