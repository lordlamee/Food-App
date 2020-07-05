import 'package:flutter/material.dart';
import 'package:food_app/styles.dart';

import 'constants.dart';

class LongButton extends StatelessWidget {
  const LongButton({
    Key key, this.label, this.onPressed
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
      onPressed: onPressed,
      fillColor: lightRed,
      child: Text(label, style: textStyle2),
    );
  }
}


class LoginTextField extends StatelessWidget {
  const LoginTextField({
    Key key, this.hintText, this.prefixIcon
  }) : super(key: key);
  final String hintText;
  final Icon prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(25),
      child: TextFormField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7)),
            contentPadding: EdgeInsets.fromLTRB(8, 5, 0, 5),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none),
        prefixIcon: prefixIcon,
      ),
    ),);
  }
}

