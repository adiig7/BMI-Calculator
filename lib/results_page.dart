import 'package:bmicalculator/bottom_button.dart';
import 'package:bmicalculator/input_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'resource_card.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult,@required this.interpretation,@required this.bmiText}) ;
  final String bmiResult;
  final String interpretation;
  final String bmiText;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                "Your Results",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusable_Card(
              colour: kactivatedCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                   bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: "RE-CALCULATE", onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage(),),);
          },)
        ],
      ),
    );
  }
}
