
import 'package:flutter/material.dart';

class reusableCard extends StatelessWidget {

  reusableCard({required this.color, this.cardChild});
  
  Color color;
  Widget? cardChild;
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