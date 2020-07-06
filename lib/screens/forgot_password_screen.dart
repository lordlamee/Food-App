import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/custom_widgets.dart';
import '../styles.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          constraints: BoxConstraints.tight(screenSize),
          padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/pizza.jpg'),
              ),
              Text(
                'Daskar\'s',
                style: textStyle1.copyWith(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Cafe',
                style: textStyle1.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 30,
              ),
              Text('Forgot Password', style: textStyle3,),
              SizedBox(
                height: 10,
              ),
              Text('Please enter a new password and \n           confirm the password',style: textStyle2.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),),
              SizedBox(
                height: 35,
              ),
              LoginTextField(
                prefixIcon: Icon(Icons.lock_outline),
                hintText: 'Type New Password',
              ),
              SizedBox(
                height: 20,
              ),
              LoginTextField(
                prefixIcon: Icon(Icons.lock_outline),
                hintText: 'Confirm New Password',
              ),
              Spacer(),
              LongButton(
                label: 'Submit',
                onPressed: (){},
              ),
              Spacer(
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
