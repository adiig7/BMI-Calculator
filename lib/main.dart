import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  return runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor: Color(0xFF0A0E21),
    ),
    home:InputPage(),
  ),);
}


