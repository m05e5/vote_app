import 'package:flutter/material.dart';
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
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 250,
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)), 
                    color: Colors.deepOrange,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.person, color: Colors.white,),
                        ),
                        Container(
                        
                          decoration: BoxDecoration(
                              color: Colors.white, 
                            borderRadius:BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0) ,),

                          ),
                          width: 210,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                      decoration: InputDecoration(
                        border:InputBorder.none,
                            fillColor:Colors.white,
                             filled: true,
                      ),
                      style: TextStyle(
                            fontSize:20.0,
                            color:Colors.black,
                      ),
                    ),
                          ),
                        ),
                      ],
                    )
                  ),
                )
              ],
            ),
          )
          ,),

      ),
    );
  }
}