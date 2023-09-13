import 'package:flutter/material.dart';
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
      appBar: myAppBar("Quiz"),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Hier steht Frage"),
        answerCard("1"),
        answerCard("2"),
        answerCard("3"),
        answerCard("4"),

      ],),),
    );
  }
}