import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor: Color(0xFF0A0E21),
      accentColor: Colors.purple
    ),
      home: Scaffold(
    appBar: AppBar(
      title: Center(
        child: Text(
          "BMI Calculator",

        ),
      ),
    ),
  )));
}

class BmiApp extends StatefulWidget {
  @override
  _BmiAppState createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

      ),
    );
  }
}
