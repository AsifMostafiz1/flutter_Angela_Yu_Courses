import 'package:flutter/material.dart';

const labelTextTile = TextStyle(fontSize: 18,letterSpacing: 1,color: Colors.grey);

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
        Text(genderName,style: labelTextTile,)
      ],
    );
  }
}