import 'package:flutter/cupertino.dart';

class Reusable_Card extends StatelessWidget {

  Reusable_Card({this.colour, this.cardChild,this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(14.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          color: colour,
        ),
      ),
    );
  }
}
