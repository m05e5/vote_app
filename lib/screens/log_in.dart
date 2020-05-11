import 'package:flutter/material.dart';
import 'package:vote/UI/CustomeInputField.dart';
import 'package:vote/screens/home_screen.dart';

void main(){
  runApp(MaterialApp(
    title: 'Login',
    home:LogIn()
));
}


class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Center(
          child: Container(
            width: 400,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset('image/logo.png', width: 100, height: 100,),
               CustomeInputField(
                 Icon(Icons.person, color: Colors.white,), 'UserName'), 
               CustomeInputField(
                 Icon(Icons.lock, color: Colors.white,), 'Password'),
                 Container(
                   width: 150,
                   
                    child: RaisedButton(
                      onPressed:(){}, 
                      color: Colors.deepOrange,
                      textColor:Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      child: Text('LogIn', style: TextStyle(
                        fontSize:20.0,

                      ) )
                    )
                  )
              ],
            ),
          )
          ,),

      ),
    );
  }
}