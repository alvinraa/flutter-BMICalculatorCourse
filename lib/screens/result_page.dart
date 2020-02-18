import 'package:flutter/material.dart';

import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/buttom_buttom.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resutlText;
  final String interpretation;
  final String age;

  ResultsPage(
      {@required this.bmiResult,
      @required this.resutlText,
      @required this.interpretation,
      @required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Here your result ',
                style: kNumberTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resutlText.toUpperCase(), style: kResultTextStyle,
                  ),
                  Text(bmiResult, style: kBMITextStyle),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'At the age of $age years old, $interpretation',
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ButtomButtom(
              onTap: () {
                Navigator.pop(context);
              },
              buttomTitle: 'RE-CALCULATE',
            ),
          )
        ],
      ),
    );
  }
}
