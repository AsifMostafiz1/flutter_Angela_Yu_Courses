import 'package:flutter/material.dart';
import 'constants.dart';
import '../screens/result_page.dart';

class BottomButton extends StatelessWidget {

  final Function onTap;
  final String buttonText;

 BottomButton({@required this.onTap,@required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        height: kBottomBarHeight,
        width: double.infinity,
        color: kBottomBarColor,
        margin: EdgeInsets.only(top: 10),
        child: Center(
            child: Text(
              buttonText,
              style: TextStyle(letterSpacing: 2, fontSize: 22),
            )),
      ),
    );
  }
}
