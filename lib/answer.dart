import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function stateHandler;
  final String answerText;

  Answer(this.stateHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.cyanAccent[100],
        child: Text(answerText),
        onPressed: stateHandler,
      ),
    );
  }
}
