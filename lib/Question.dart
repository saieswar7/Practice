import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String q;
  Question(this.q);
  @override
  Widget build(BuildContext cn) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(15),
        child: Text(q,
            style: TextStyle(fontSize: 28), textAlign: TextAlign.center));
  }
}
