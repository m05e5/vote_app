import 'package:flutter/material.dart';
//import 'package:web_app/pages/product_details.dart';
class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  var service_list = [
    {
      "name": "Massonerie",
      "picture":  "images/massonerie.JPG",
     
    },
    {
      "name": "plomberie",
      "picture":  "images/plomberie.JPG",
  
    },
    {
      "name": "peinture",
      "picture":  "images/peinture.JPG",
      
    },
    {
      "name": "architechture",
      "picture":  "image/architechture.JPG",
     
    },
     {
      "name": "electricité",
      "picture":  "image/electricite.jpg",
     
    },
     {
      "name": "rangement",
      "picture":  "image/rangement.jpg",
     
    },
  ];
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      itemCount: service_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
           return Single_prod(
             service_name: service_list[index]['name'],
             service_picture: service_list[index]['picture'],
            
           );
           }
      
    );
  }
} 


class Single_prod extends StatelessWidget {
  final service_name;
  final service_picture;

  Single_prod({
    this.service_name,
    this.service_picture,
  }); 

   @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: service_name,
         child: Material(
           child: InkWell(
            //  onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
            //    // here we are passing the value of the product detail page
            //     builder: (context) => new ProductDetails( 
            //       product_detail_name: service_name,
            //       product_detail_picture: service_picture,
            //     ))),
            child: GridTile(
             footer: Container(
               color: Colors.white,
                child:new Row(children: <Widget>[
                Expanded(
                  child: new Text(service_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                ),
               
              ],)),
             
             child: Image.asset(service_picture,
             fit: BoxFit.cover),)
           
         )
          )),
    );
  }
}