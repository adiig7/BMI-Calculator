import 'package:flutter/cupertino.dart';

import 'constants.dart';

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
        height: 60.0,
      ),
    );
  }
}
