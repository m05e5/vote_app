import 'package:flutter/material.dart';
class CustomeInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
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
                );
  }
}