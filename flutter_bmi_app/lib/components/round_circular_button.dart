import 'package:flutter/material.dart';

class RoundCircularButton extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;

  RoundCircularButton({@required this.iconData, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(height: 56, width: 56),
      child: Icon(iconData),
      shape: CircleBorder(),
      fillColor: Color(0x48C2BEBE),
      onPressed: onPressed,
    );
  }
}