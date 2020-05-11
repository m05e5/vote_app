import 'package:flutter/material.dart';
class CustomeInputField extends StatelessWidget {

  Icon fieldIcon;
  String hintText;
 
CustomeInputField(this.fieldIcon, this.hintText);

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
                          child:fieldIcon,
                        ),
                        Container(
                        
                          decoration: BoxDecoration(
                              color: Colors.white, 
                            borderRadius:BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0) ,),

                          ),
                          width: 210,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                              border:InputBorder.none,
                              hintText:hintText,
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