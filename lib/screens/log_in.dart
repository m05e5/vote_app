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
          appBar: new AppBar(
       elevation: 0.0,
       backgroundColor: Colors.blueGrey,
       title: Text('HomeApp'),
       actions: <Widget>[
       /*  new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){
           Navigator.push(context, MaterialPageRoute(
                     builder: (context)=>new LoginPage()));
         }),
         new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){},),*/ 
          ],
          ),
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        color: Colors.blue,
        
        child: Center(
          child: Container(
            width: 400,
            height: 400,
            child: Column(
              children: <Widget>[
                TextField(
                  style: TextStyle(
                    fontSize:20.0,
                    color:Colors.white,
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