 import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar(String title){
 return AppBar(
          backgroundColor: Colors.white,
          title:  Text(
            title,
          style: TextStyle(color: Colors.black),
          ),
        );
}

Widget answerCard(String answer, BuildContext context){
  return Container(
          height: MediaQuery.of(context).size.height*0.1,
          width: MediaQuery.of(context).size.width,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
              elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  answer,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18),
                  textAlign: TextAlign.center,
                  ),
              ),
              ),
          ),
        );
}