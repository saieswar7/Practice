import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index = 0;
  var ts = 0;
  void answeredQuestion(int s) {
    ts += s;
    setState(() {
      index = index + 1;
    });
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your Fav Color ?',
        'Ans': [
          {'text': 'Black', 'score': 10},
          {'text': 'White', 'score': 5},
          {'text': 'Blue', 'score': 8},
          {'text': 'Yellow', 'score': 4}
        ]
      },
      {
        'questionText': 'What\'s fav your Animal ?',
        'Ans': [
          {'text': 'Lion', 'score': 10},
          {'text': 'Tiger', 'score': 8},
          {'text': 'Goat', 'score': 3},
          {'text': 'Bear', 'score': 2}
        ]
      },
      {
        'questionText': 'What\'s fav your Person ?',
        'Ans': [
          {'text': 'Dhoni', 'score': 7},
          {'text': 'Virat', 'score': 5},
          {'text': 'Rohit', 'score': 4},
          {'text': 'Pant', 'score': 0}
        ]
      }
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("My App"),
            ),
            body: index < questions.length
                ? Quiz(questions, answeredQuestion, index)
                : Result(ts)));
  }
}
