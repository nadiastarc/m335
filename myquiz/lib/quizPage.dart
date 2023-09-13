import 'package:flutter/material.dart';
import 'package:myquiz/style/style.dart';
import 'package:myquiz/widgets/widgets.dart';

class QuizPage extends StatefulWidget { //StatefulWidget --> kann Änderungen n seite machen, Unterschied dazu : StatelessWidget
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: myAppBar("Quiz"),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/SubWay.jpg"),
             fit: BoxFit.fitHeight)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Spacer(),
            Text("Hier steht Frage Hier steht Frage Hier steht Frage",
            style: headerTextStyle(),
              textAlign: TextAlign.center,),
              Spacer(),
            answerCard("1",context ),
            answerCard("2", context),
            answerCard("3", context),
            answerCard("4", context),
                      Spacer(),
      
                ],),
          ),),
      ),
    );
  }
}


           