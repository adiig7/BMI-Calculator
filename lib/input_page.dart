import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color activatedCardColor = Color(0xFF1D1E33);
const Color deactivatedCardColor = Color(0xFF111328);
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
enum Gender{
  male,female
}
class _InputPageState extends State<InputPage> {

  Gender selectedGender;
//
//  Color maleCardColor = deactivatedCardColor;
//  Color femaleCardColor = activatedCardColor;
//
//  void updateColor(Gender gender) {
//    if (gender == Gender.male){
//      if (maleCardColor == deactivatedCardColor) {
//        maleCardColor = activatedCardColor;
//        femaleCardColor = deactivatedCardColor;
//      }
//      else {
//        maleCardColor = deactivatedCardColor;
//        femaleCardColor = activatedCardColor;
//      }
//  }
//    if(gender==Gender.female){
//  if(femaleCardColor == deactivatedCardColor){
//  femaleCardColor = activatedCardColor;
//  maleCardColor = deactivatedCardColor;
//  }
//  else{
//  femaleCardColor = deactivatedCardColor;
//  maleCardColor = activatedCardColor;
//  }
//  }
//  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI Calculator")
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap:(){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: Reusable_Card(
                      colour: selectedGender == Gender.male ? activatedCardColor : deactivatedCardColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: "MALE"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap:(){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: Reusable_Card(
                      colour: selectedGender == Gender.female ? activatedCardColor : deactivatedCardColor,
                      cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Reusable_Card(
              colour: activatedCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable_Card(
                    colour: activatedCardColor,
                  ),
                ),
                Expanded(
                  child: Reusable_Card(
                    colour: activatedCardColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {

  IconContent({@required this.icon,@required this.label});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF8D8E9800),
            fontSize: 18.0
          ),
        )
      ],
    );
  }
}

class Reusable_Card extends StatelessWidget {

  Reusable_Card({this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}


