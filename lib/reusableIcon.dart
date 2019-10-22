import 'package:flutter/material.dart';

class ReusableIcon extends StatelessWidget {
  final String myText;
  final IconData icon;
  ReusableIcon({this.myText, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          myText,
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
