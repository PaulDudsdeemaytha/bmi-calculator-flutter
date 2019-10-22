import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                    cardChild: new ReusableIcon(),
                  ),
                ),
                Expanded(
                  child: new ReusableCard(
                    colour: cardColor,
                    cardChild: ReusableIcon(),
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

class ReusableIcon extends StatelessWidget {
//  final Text myText;
//  final FontAwesomeIcons fontAwesomeIconName;
//  ReusableIcon(this.myText, this.fontAwesomeIconName);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.mars,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'MALE',
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  ReusableCard({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
