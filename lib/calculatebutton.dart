import 'package:flutter/material.dart';
import 'constants.dart';

class CalculateButton extends StatelessWidget {
  
  const CalculateButton({required this.label,required this.onTap});

  final Function() onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        child: Text(
          label,
           style: kCalculateButton,
           textAlign: TextAlign.center,
           ),
        color: kButtonColor,
        padding: EdgeInsets.only(top: 25.0),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}