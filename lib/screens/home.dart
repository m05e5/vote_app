import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Home',
    home: Home(),
  ),);
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
     Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('image/house.png'),
        AssetImage('image/logo.png'),
        AssetImage('image/logo.jpg'),
        AssetImage('image/house.png'),
        AssetImage('image/logo.png'),
      ], 
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      dotBgColor: Colors.transparent,
    ),
  );

    return Scaffold(
      appBar: new AppBar(
       elevation: 0.0,
       backgroundColor: Colors.red,
       title: Text('FashApp'),
       actions: <Widget>[
         new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){
        //    Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));
          })
       ],
     ),
      
    );
  }
}