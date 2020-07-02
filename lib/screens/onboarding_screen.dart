import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/styles.dart';

import '../constants.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
        child: Column(
          children: <Widget>[
            //Todo: Add Pizza image

            Text('Daskar\'s',
            style: textStyle1.copyWith(
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),),
            Text('Cafe',
            style: textStyle1.copyWith(
              fontSize: 18
            ),),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'BEST FOOD \nIN YOUR\nCITY',
                style: textStyle2.copyWith(
                  color: Colors.black,
                  fontSize: 40
                ),
              ),
            ),
            RawMaterialButton(
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              constraints:
                  BoxConstraints.tightFor(width: screenSize.width, height: 50),
              elevation: 5,
              onPressed: () {
                //Todo: Implement Get Started Function
              },
              fillColor: lightRed,
              child: Text(
                'Get started here',
                style: textStyle2
              ),
            )
          ],
        ),
      ),
    );
  }
}
