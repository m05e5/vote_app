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
        child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomRight,
                    widthFactor: 0.5,
                    heightFactor: 0.5,
                    child: Material( 
                      borderRadius: BorderRadius.all(Radius.circular(160.0)),
                      color: Color.fromRGBO(255, 255, 255, 0.4),
                      child: Container(
                        width: 320,
                        height: 320,
                      ),
                    ),
                  ),
                   Align(
                    alignment: Alignment.bottomRight,
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Material( 
                      borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      color: Color.fromRGBO(255, 255, 255, 0.6),
                      child: Container(
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                  Center(
            child: Container(
             
              width: 400,
              height: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Material(
                    elevation: 10.0,
                    borderRadius: BorderRadius.all(Radius.circular(50.0)) ,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset('image/logo.png', width: 70, height: 70,),
                    )),
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
                ],
        ),

      ),
    );
  }
}