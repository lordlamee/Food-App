import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/styles.dart';

import '../constants.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageViewController = PageController(initialPage: 0);
  bool onPage = false;
  int page = 0;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/pizza.jpg'),
            ),
            Text(
              'Daskar\'s',
              style: textStyle1.copyWith(
                  fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              'Cafe',
              style: textStyle1.copyWith(fontSize: 18),
            ),
            Spacer(
              flex: 3,
            ),
            Container(
              height: 180,
              width: screenSize.width,
              child: PageView(
                  allowImplicitScrolling: true,
                  onPageChanged: (value) {
                    setState(() {
                      page = value;
                    });
                  },
                  pageSnapping: true,
                  controller: pageViewController,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'BEST FOOD \nIN YOUR\nCITY',
                        style: textStyle2.copyWith(
                            color: Colors.black, fontSize: 40),
                      ),
                    ),
                    Text(
                      'DROP BY AND  \nFILL YOUR \nCRAVINGS',
                      style: textStyle2.copyWith(
                          color: Colors.black, fontSize: 40),
                    ),
                    Text(
                      'DON\'T FORGET \nTO BRING  \nSOMEONE',
                      style: textStyle2.copyWith(
                          color: Colors.black, fontSize: 40),
                    ),
                  ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: page == 0 ? lightRed : Colors.black,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: page == 1 ? lightRed : Colors.black,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: page == 2 ? lightRed : Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
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
              child: Text('Get started here', style: textStyle2),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
