import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //FUNCTIONS
  void answerQuestion() {
    print("Answer chosen!");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your name?",
      "What's your age",
    ];
    // Note the trailing commas that add some nice autoformatting capability.
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
              onPressed: answerQuestion,
            ),
            Text('Question2'),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
