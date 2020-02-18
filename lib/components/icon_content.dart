import 'package:flutter/material.dart';

import '../constants.dart';





class IconContent extends StatelessWidget {
  final String gender;
  final IconData iconGender;

  IconContent({this.gender, this.iconGender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(iconGender, size: 80.0),
        SizedBox(height: 15),
        Text(
          gender,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
