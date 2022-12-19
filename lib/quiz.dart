import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final questions;
  Function answeredQuestion;
  int index;

  Quiz(this.questions, this.answeredQuestion, this.index);

  @override
  Widget build(BuildContext cnt) {
    return Column(children: [
      Question(
        questions[index]["questionText"].toString(),
      ),
      ...(questions[index]['Ans'] as List<Map<String, Object>>).map((answer) {
        return Answer(
            () => answeredQuestion(answer['score']), answer['text'].toString());
      }).toList()
      // Answer(answeredQuestion),
      // Answer(answeredQuestion),
      // Answer(answeredQuestion),
      // Answer(answeredQuestion),
      //RaisedButton(child: Text("Answer1"), onPressed: answeredQuestion),
      //RaisedButton(child: Text("Answer1"), onPressed: answeredQuestion),
    ]);
  }
}
