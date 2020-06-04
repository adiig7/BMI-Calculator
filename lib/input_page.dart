import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resource_card.dart';
import 'icon.dart';
import 'constants.dart';
import 'package:bmicalculator/RoundIconButton.dart';
import 'results_page.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
enum Gender{
  male,female
}
class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  int height=180;
  int weight = 60;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI Calculator")
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    colour: selectedGender == Gender.male ? kactivatedCardColor : kdeactivatedCardColor,
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
                    colour: selectedGender == Gender.female ? kactivatedCardColor : kdeactivatedCardColor,
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
              colour: kactivatedCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  Text("HEIGHT",
                  style: klabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: knumberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: klabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 240,
                      onChanged: (double newValue) {
                       setState(() {
                         height = newValue.toInt();
                       });
                      },
                    ),
                  )
                ],
              ),

            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Reusable_Card(
                    colour: kactivatedCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: klabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: knumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed:() {
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable_Card(
                    colour: kactivatedCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: klabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: knumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                  ),
                  ),
                )
              ],
            ),
          ),
          BottomButton(buttonTitle: "CALCULATE",onTap: (){
            Navigator.push(context, MaterialPageRoute( builder: (context){
              return ResultsPage();
            },),);
          },),

        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {

  final String buttonTitle;
  final Function onTap;

  const BottomButton({Key key, this.buttonTitle, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: onTap,
          child: Container(
            child: Center(
                child: Text(buttonTitle,style: kButtonTextStyle,)),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(bottom : 10.0),
        width: double.infinity,
        height: 70.0,
          ),
    );
  }
}






