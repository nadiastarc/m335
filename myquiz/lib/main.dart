import 'package:flutter/material.dart';
import 'package:myquiz/quizPage.dart';
import 'package:myquiz/style/style.dart';
import 'package:myquiz/widgets/widgets.dart';

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
        appBar: myAppBar("StudyFy"),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 2,
              ),
              Text("Hoi Hoi!" ,
              style: headerTextStyle(),),
              Spacer(),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage()));
                },
                child: Text("Start")),
                Spacer(
                  flex: 2,
                ),
          ],) 
        ));
  
  }
}