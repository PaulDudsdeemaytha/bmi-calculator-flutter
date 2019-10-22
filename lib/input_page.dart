import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableCard.dart';
import 'reusableIcon.dart';

const cardColor = Colors.blueGrey;
const bottomContainerColor = Colors.pink;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new ReusableCard(
                    colour: cardColor,
                    cardChild: new ReusableIcon(
                      icon: FontAwesomeIcons.mars,
                      myText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: new ReusableCard(
                    colour: cardColor,
                    cardChild: ReusableIcon(
                      icon: FontAwesomeIcons.venus,
                      myText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new ReusableCard(
                    colour: cardColor,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new ReusableCard(
                    colour: cardColor,
                  ),
                ),
                Expanded(
                  child: new ReusableCard(
                    colour: cardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 70,
          )
        ],
      ),
    );
  }
}
