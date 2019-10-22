import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableCard.dart';
import 'reusableIcon.dart';

const bottomContainerHeight = 70.0;
const cardColor = Colors.blueGrey;
const bottomContainerColor = Colors.pink;
const activeCardColor = Colors.blue;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = cardColor;
  Color femaleCardColor = cardColor;
//male card pressed
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == cardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = cardColor;
      } else {
        maleCardColor = cardColor;
      }
    }
//female card pressed
    if (gender == 2) {
      if (femaleCardColor == cardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = cardColor;
      } else {
        femaleCardColor = cardColor;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      print('Male Button Pressed!');
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: new ReusableCard(
                      colour: maleCardColor,
                      cardChild: new ReusableIcon(
                        icon: FontAwesomeIcons.mars,
                        myText: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('Female Button Pressed');
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: new ReusableCard(
                      colour: femaleCardColor,
                      cardChild: ReusableIcon(
                        icon: FontAwesomeIcons.venus,
                        myText: 'FEMALE',
                      ),
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
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
