import 'package:flutter/material.dart';
import 'package:myquiz/style/style.dart';
import 'package:myquiz/widgets/widgets.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class QuizPage extends StatefulWidget {
  //StatefulWidget --> kann Änderungen n seite machen, Unterschied dazu : StatelessWidget
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentLvl = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: myAppBar("Quiz"),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/SubWay.jpg"), fit: BoxFit.fitHeight)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  "Hier steht Frage Hier steht Frage Hier steht Frage",
                  style: headerTextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  "Current Progress",
                  style: underTitleTextStyle(color: Colors.white54),
                ),
                StepProgressIndicator(
                  totalSteps: 100,
                  currentStep: currentLvl,
                  size: 8,
                  padding: 0,
                  selectedColor: Colors.yellow,
                  unselectedColor: Colors.cyan,
                  roundedEdges: Radius.circular(10),
                  selectedGradientColor: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.yellowAccent, Colors.deepOrange],
                  ),
                  unselectedGradientColor: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.black, Colors.grey],
                  ),
                ),
                Spacer(),
                answerCard("1", context),
                answerCard("2", context),
                answerCard("3", context),
                answerCard("4", context),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
