import 'package:flutter/material.dart';
import 'package:myquiz/quizPage.dart';

void main(){
  runApp(const StartApp());
}

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      theme: ThemeData(primaryColor: Colors.tealAccent),
      home: MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:  Text(
            "StudyFy",
          style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hoi Hoi!"),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage()));
                },
                child: Text("Start")),
          ],) 
        ));
  
  }
}