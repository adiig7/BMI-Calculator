import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resource_card.dart';
import 'icon.dart';

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
                  child: Reusable_Card(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male ? activatedCardColor : deactivatedCardColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE"),
                  ),
                ),
                Expanded(
                  child: Reusable_Card(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female ? activatedCardColor : deactivatedCardColor,
                    cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: "FEMALE"),
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





