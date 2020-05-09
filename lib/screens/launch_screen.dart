import 'package:flutter/material.dart';
import 'package:vote/constants.dart';
import 'package:vote/widgets/shared_widgets.dart';
 
class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 100 ),
              child: Text(
                kAppName,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
              ),
            ),
            SizedBox(
              height: 200.0,
            ),
      LoginButton(
        label: 'Google sign in',
        onPressed: () => signIn(context),
        ),
          
          SizedBox(
              height: 20.0,
            ),

          LoginButton(
        label: 'anonymous sign in',
        onPressed: () => logIn(context),
        ),
      ],
      ),
    );
  }

  void signIn (BuildContext context){
    Navigator.pushReplacementNamed(context, '/home');
  }
     void logIn (BuildContext context){
     Navigator.pushReplacementNamed(context, '/logIn');
   }
}