import 'reusableCard.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'calculatebutton.dart';



class Result extends StatelessWidget {

  Result({required this.bmi,required this.condition,required this.advice});

final String bmi;
final String condition;
final String advice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IBM Calculator'),
      ),
      body: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleColor,
              )
            )
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      condition.toUpperCase(),
                      style: kResultTextStyle,
                      ),
                    Text(
                      bmi,
                      style: kBMIstyle,
                    ),
                    Text(
                      advice,
                      textAlign: TextAlign.center,
                      style: kBodystyle,
                    )
                  ],
                ), onpress: (){},
              )
              ),
          CalculateButton(label: 'RE-CALCULATE', onTap: (){
            Navigator.pop(context);
          })
        ],
      )
    );
  }
}