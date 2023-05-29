



import 'package:flutter/material.dart';

class cardwidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:const [
        Icon(
          Icons.female,
          size: 80.0,
        ),
        Text('FEMALE' ,style: TextStyle(
          fontSize: 50.0,
          color: Colors.white,
        ),
        ),
      ],
    );
  }
}
