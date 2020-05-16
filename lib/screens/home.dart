import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:vote/components/services.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
   
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
    height: 170.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('image/plomberie.jpg'),
        AssetImage('image/massonerie.jpg'),
        AssetImage('image/architecture.jpg'),
        AssetImage('image/electricite.jpg'),
        AssetImage('image/rangement.jpg'),
        AssetImage('image/peinture.jpg'),
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
       title: Text('HouseCorp'),
       actions: <Widget>[
         new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){
           //    Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));
         }),
         
       ],
     ),


     drawer:new Drawer(
       child: new ListView(
         children: <Widget>[
//          header
            new UserAccountsDrawerHeader(
              accountName: Text('CalebMoses'),
              accountEmail: Text('calebmoses1111@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                  ) ,
                ),
                decoration: new BoxDecoration(
                  color:  Colors.red
                ),  
              ),
//              body
              InkWell(
                onTap: (){},
                              child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(Icons.home, color: Colors.red,),
                ),
              ),

               InkWell(
                onTap: (){},
                              child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person, color: Colors.red,),
                ),
              ),

               InkWell(
                onTap: (){},
                              child: ListTile(
                  title: Text('My orders'),
                  leading: Icon(Icons.shopping_basket, color: Colors.red,),
                ),
              ),


               InkWell(
                onTap: (){ 
                //   Navigator.push(context, MaterialPageRoute(
                  //   builder: (context)=>new Cart()));
                     },
                              child: ListTile(
                  title: Text('Shopping cart'),
                  leading: Icon(Icons.shopping_cart, color: Colors.red,),
                ),
              ),


               InkWell(
                onTap: (){},
                              child: ListTile(
                  title: Text('Favorite'),
                  leading: Icon(Icons.favorite, color: Colors.red,),
                ),
              ),

          Divider(),

           InkWell(
                onTap: (){},
                              child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings, color: Colors.grey,),
                ),
              ),

            InkWell(
                onTap: (){},
                              child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help, color: Colors.grey,),
                ),
              ),
       
       
         ],
       ),
     ),

     body: new ListView(children: <Widget>[

         image_carousel,


         
         new Padding(padding: const EdgeInsets.all(20.0),
         child: new Text('Recent products'),),
      //  grid view
      Container(
  height:320.0,
      child: Services(),
      ), ],),


      
    );
  }
}