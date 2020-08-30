import 'package:flutter/material.dart';
import 'UI/CustomInputField.dart';
import 'UI/mes.dart';
void main(){
  runApp(MaterialApp(
    title: 'Login App',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Center(
          child: Container(
            width: 400,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              CustomInputField(Icon(Icons.person,color: Colors.white),'Email'),

                CustomInputField(Icon(Icons.phone,color: Colors.white),'Phone'),

               mes(Icon(Icons.message,color: Colors.white),'Message'),
              Container(
                width: 300,
                height: 100,
                child:   RaisedButton(onPressed: (){},color: Colors.deepOrange, textColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: Text('SEND',style: TextStyle(
                  fontSize: 20.0
                ),),),
              )
              ],
            ),
          ),
        ),
      ),
    );
  }

}