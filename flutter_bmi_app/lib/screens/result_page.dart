import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/components/bottom_button.dart';
import 'package:flutter_bmi_app/components/constants.dart';
import 'package:flutter_bmi_app/components/reusbale_card.dart';

class ResultPage extends StatefulWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;


  ResultPage({@ required this.bmiResult,@required this.resultText,@required this.interpretation});

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Your Results',
                style: kStringTextTile,
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kInActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text(widget.resultText,style: TextStyle(color: Colors.green,fontSize: 25),),

                    Text(widget.bmiResult,style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),

                    Text(widget.interpretation,style: TextStyle(fontSize: 20),textAlign: TextAlign.center,)

                  ],
                ),
              ),
            ),

            BottomButton(
              buttonText: "RE-CALCULATE",
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
