import 'package:bmi_calculator_ehsanesmaily747/reusableCard.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'calculatebutton.dart';



class Result extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IBM Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
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
              child: reusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Normal',
                      style: kResultTextStyle,
                      ),
                    Text(
                      '18.3',
                      style: kBMIstyle,
                    ),
                    Text(
                      'Your BMI is low , you should eat more!',
                      textAlign: TextAlign.center,
                      style: kBodystyle,
                    )
                  ],
                ),
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