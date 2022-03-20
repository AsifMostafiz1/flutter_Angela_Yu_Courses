import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const customContainerColor = Color(0xFF1D1E33);
const bottomContainerHeight = 60.0;
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('BMI CALCULATOR'),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    CustomContainer(
                      color: customContainerColor,
                      cardWidget: FirstRowCustomWidget(
                       icon: FontAwesomeIcons.mars,
                        text: "Male",
                      ),
                    ),
                    CustomContainer(
                      color: customContainerColor,
                      cardWidget: FirstRowCustomWidget(
                        icon: FontAwesomeIcons.venus,
                        text: "Female",
                      ),
                    ),
                  ],
                ),
              ),
              CustomContainer(
                color: customContainerColor,
              ),
              Expanded(
                child: Row(
                  children: [
                    CustomContainer(
                      color: customContainerColor,
                      cardWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text("Weight",style: TextStyle(fontSize: 30),),
                          Text("60",style: TextStyle(fontSize: 40),),
                          Row(
                            children: [
                              FloatingActionButton(onPressed:(){

                              }),
                              FloatingActionButton(onPressed:(){

                              }),
                            ],
                          )

                        ],
                      ),
                    ),
                    CustomContainer(
                      color: customContainerColor,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                height: bottomContainerHeight,
                width: double.infinity,
                color: bottomContainerColor,
              )
            ],
          )),
    );
  }
}

class FirstRowCustomWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  FirstRowCustomWidget({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style:
          TextStyle(fontSize: 20, color: Color(0xFF8d8E98)),
        ),
      ],
    );
  }
}
