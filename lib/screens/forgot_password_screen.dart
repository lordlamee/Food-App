import 'package:flutter/material.dart';

import '../styles.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
        ],
      ),
    );
  }
}
