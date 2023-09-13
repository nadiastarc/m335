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

Widget answerCard(String answer){
  return Container(
          height: 60,
          width: 150,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(answer),
              ),
          ),
        );
}