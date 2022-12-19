import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback SelectHandler;
  final String qt;

  Answer(this.SelectHandler, this.qt);
  @override
  Widget build(BuildContext cint) {
    return Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      child: RaisedButton(
          child: Text(qt),
          color: Colors.amber,
          textColor: Colors.white,
          onPressed: SelectHandler),
    );
  }
}
