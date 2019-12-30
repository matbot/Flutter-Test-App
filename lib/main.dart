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
            Text(questions[0]),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: answerQuestion,
            ),
            Text(questions[1]),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: () => print("Answer 2 chosen!"),
            ),
          ],
        ),
      ),
    );
  }
}
