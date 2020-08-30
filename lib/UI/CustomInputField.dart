import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget{

  Icon fieldIcon;
  String hintText;

  CustomInputField(this.fieldIcon,this.hintText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
              width: 340,
              child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.all(Radius.circular(13.0)),
                  color: Colors.deepOrange,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: fieldIcon,
                    ),
                    Container(
                        decoration: BoxDecoration(
                              color: Colors.white, //por si quieres que sea blan
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),bottomRight: Radius.circular(10.0)) ,
                            ),
                        width: 290,
                        child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: TextField(
                              decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: hintText,
                                      fillColor: Colors.white,
                                      filled: true
                                   ),
                                  style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black
                        ),
                      ),
                    ),
                  ),
               ]
            ),
        ),
    );
  }

}