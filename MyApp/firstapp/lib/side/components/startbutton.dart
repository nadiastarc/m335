
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text("Elevated Button"), 
            backgroundColor: const Color.fromARGB(255, 82, 171, 255), //background color of app bar
        ),
        body:Center( 
            child: SizedBox( 
              height:100, //height of button
              width:300, //width of button
              child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.indigoAccent, //background color of button
                  side: BorderSide(width:3, color:Colors.indigoAccent), //border width and color
                  elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(30)
                  ),
                  padding: EdgeInsets.all(20) //content padding inside button
                ),
                onPressed: (){ 
                    //code to execute when this button is pressed.
                }, 
                child: Text("Elevated Button") 
              )
            )
        )
    );
  }
}