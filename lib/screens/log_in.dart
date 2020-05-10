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
      body:ListView(
       
       
       //crossAxisAlignment: CrossAxisAlignment.start,
       children:<Widget>[
         Container(
           
          child: Stack(
            children: <Widget>[
             
              Container(
                padding:  EdgeInsets.fromLTRB(15.0, 5.0, 0.0, 0.0),
                child: Text(
                  'Signup',
                  style: TextStyle(
                    fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.white
                  )
                  ,),
              ),
              Container(
                padding:  EdgeInsets.fromLTRB(150.0, 5.0, 0.0, 0.0),
                child: Text(
                  '.',
                  style: TextStyle(
                    fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.blueGrey)
                  ),
              )
            ],
          ),
        ),
        Container(
         
          padding: EdgeInsets.only(top:35.0, left: 20.0, right: 20.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey)
                  )
                ),
              ),
              SizedBox(height: 20.0,),
               TextField(
                decoration: InputDecoration(
                  labelText: 'EMAIL',
                  labelStyle: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey)
                  )
                ),
              ),
              SizedBox(height: 20.0,),
                TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey)
                  )
                ),
                obscureText: true,
              ),
              SizedBox(height: 5.0),
              Container(
                alignment: Alignment(1.0, 0.0),
                padding: EdgeInsets.only(top: 15.0, left: 20.0),
               
              ),
              SizedBox(height: 40.0),
              Container(
                height: 40.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.blueAccent,
                  color: Colors.blueGrey,
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat', 
                        ),
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
             Container(
                height: 40.0,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 1.0
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                     
                      Center(
                        child: Text('Log in',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          color: Colors.white
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'New to spotify ?',
              style: TextStyle(
                 fontFamily: 'Montserrat',
                 color: Colors.white
              ),
            ),
            SizedBox(width: 5.0),
            InkWell(
              onTap: (){
                Navigator.of(context).pushNamed('signup');
              },
              child: Text('Register',
              style: TextStyle(
                color: Colors.blueGrey,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
              ),
              ),
              )
          ],
        )
      ],
     )
    );
  }
}