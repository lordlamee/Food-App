import 'package:flutter/material.dart';
import 'package:food_app/styles.dart';

import 'constants.dart';

class LongButton extends StatelessWidget {
  const LongButton({
    Key key,this.label,this.onPressed
  }) : super(key: key);
  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)),
      constraints:
      BoxConstraints.tightFor(width: screenSize.width, height: 50),
      elevation: 5,
      onPressed:onPressed,
      fillColor: lightRed,
      child: Text(label, style: textStyle2),
    );
  }
}
