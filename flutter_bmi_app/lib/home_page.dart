import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusbale_card.dart';
import 'icon_content.dart';

const bottomBarHeight = 60.0;
const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);
const bottomBarColor = Colors.pinkAccent;

enum Gender{
  male,
  female
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bmi Calculator',
          style: TextStyle(letterSpacing: 1),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPressed: (){
                      setState(() {
                        selectedGender=Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male? activeCardColor : inActiveCardColor,
                    cardChild: IconContent(
                      genderName: "Male",
                      iconData: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPressed: (){
                      setState(() {
                        selectedGender=Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female? activeCardColor : inActiveCardColor,
                    cardChild: IconContent(
                      genderName: "Female",
                      iconData: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: bottomBarHeight,
            width: double.infinity,
            color: bottomBarColor,
            margin: EdgeInsets.only(top: 10),
            child: Center(
                child: Text(
              'Calculate',
              style: TextStyle(letterSpacing: 2, fontSize: 22),
            )),
          )
        ],
      ),
    );
  }
}
