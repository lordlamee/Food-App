import 'package:flutter/material.dart';

import '../constants.dart';
import '../custom_widgets.dart';
import '../styles.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 70, 25, 0),
        child: Column(

          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/pizza.jpg'),
            ),
            SizedBox(
              height: 8,
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
              flex: 2,
            ),
            Text(
              'Welcome!',
              style: textStyle1.copyWith(
                  fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              'Login to Continue',
              style: textStyle1.copyWith(fontSize: 18),
            ),
            Spacer(
            ),
            LoginTextField(
              hintText: 'Email Address',
              prefixIcon: Icon(Icons.mail_outline),
            ),
            SizedBox(
              height: 25,
            ),
            LoginTextField(
              hintText: 'Password',
              prefixIcon: Icon(Icons.lock_outline),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color: Colors.white,
                          shape: BoxShape.circle,
                        border: Border.all(
                          width: 2,
                          color: Colors.grey,
                        )
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Remember Me'),
                  ],
                ),
                Text('Forgot Password?',
                style: textStyle1,)
              ],
            ),
            SizedBox(
              height: 30,
            ),
            LongButton(
              label: 'Log In',
              onPressed: (){
                //:Todo Implement Log In function
              },
            ),
            Spacer(),
            Text('New user?Sign Up',
            style: textStyle1.copyWith(
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    Key key,this.hintText,this.prefixIcon
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
          contentPadding: EdgeInsets.fromLTRB(8, 5, 0, 5),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide.none),
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
