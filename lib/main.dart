import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  final questions = const [
    {
      'questionText': 'What is your favourite color?',
      'answer': ['black', 'blue', 'red', 'white'],
    },
    {
      'questionText': 'What is your favourite animal',
      'answer': ['lion', 'dog', 'rabbit', 'cat'],
    },
    {
      'questionText': 'What is my favourite place',
      'answer': ['London', 'Paris', 'Delhi', 'Varanasi'],
    },
    {
      'questionText': 'Which is my favourite IPL team?',
      'answer': ['RCB', 'CSK', 'MI', 'DC'],
    },
  ];

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
    if (questionIndex < questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
          backgroundColor: Colors.blueAccent[300],
        ),
        body: questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(
                    questions[questionIndex]['questionText'],
                  ),
                  ...(questions[questionIndex]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('Well done! you did it'),
              ),
      ),
    );
  }
}
