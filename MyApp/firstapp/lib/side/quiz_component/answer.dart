import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler; // Change the type to VoidCallback
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // use SizedBox for white space instead of Container
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler, // Use the passed callback directly
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(const TextStyle(color: Colors.white)),
          backgroundColor: MaterialStateProperty.all(Colors.green),
        ),
        child: Text(answerText),
      ),
    );
  }
}
