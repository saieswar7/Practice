import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int ts;
  VoidCallback reStartApp;

  Result(this.ts, this.reStartApp);

  String get resultPharse {
    String r = '';
    if (ts <= 15) {
      r = 'Good';
    } else if (ts > 15 && ts < 25) {
      r = 'Better';
    } else if (ts > 25 && ts < 35) {
      r = 'Best';
    } else {
      r = 'Waste Fellow';
    }
    return r;
  }

  Widget build(BuildContext cnt) {
    print(ts);
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPharse,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
      FlatButton(onPressed: reStartApp, child: Text("Restart App"))
    ]));
  }
}
