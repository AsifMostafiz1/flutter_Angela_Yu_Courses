import 'package:flutter/material.dart';
import 'constants.dart';


class IconContent extends StatelessWidget {
  final String genderName;
  final IconData iconData;

  IconContent({this.genderName, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData,size: 60,),
        SizedBox(height: 10,),
        Text(genderName,style: kLabelTextTile,)
      ],
    );
  }
}