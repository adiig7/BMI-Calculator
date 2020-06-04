import 'package:flutter/material.dart';
import 'constants.dart';
import 'resource_card.dart';

class ResultsPage extends StatelessWidget {
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
                    "Normal",
                    style: kResultTextStyle,
                  ),
                  Text(
                    "18.3",
                    style: kBMITextStyle,
                  ),
                  Text(
                    "Your BMI Index is quite low. You need to eat more.",
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
