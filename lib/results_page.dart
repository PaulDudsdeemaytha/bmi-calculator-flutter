import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusableCard.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Caluculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Colors.blueGrey,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Normal',
                    style: kResultsTextStyle,
                  ),
                  Text(
                    '20.5',
                    style: kResultsBMITextStyle,
                  ),
                  Text(
                    'Your BMI is good',
                    style: kResultsTextStyle,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
