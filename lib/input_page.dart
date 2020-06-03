import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resource_card.dart';
import 'icon.dart';
import 'constants.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
enum Gender{
  male,female
}
class _InputPageState extends State<InputPage> {

  Gender selectedGender;

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
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("HEIGHT",
                  style: labelTextStyle,
                  ),
                ],
              ),

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





