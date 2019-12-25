import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your name?",
      "What's your age",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Testing App'),
        ),
        body: Column(
          children: [
            Text('Question1'),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: null,
            ),
            Text('Question2'),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: null,
            ),
            Text('Question3'),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
