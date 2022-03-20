import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {

   final Color color;
   final Widget cardWidget;
   CustomContainer({@required this.color,this.cardWidget});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)),
      child: cardWidget,
    );
  }
}
