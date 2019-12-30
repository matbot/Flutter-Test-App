//PACKAGES
import 'package:flutter/material.dart';
//LIBRARIES
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //PROPERTIES
  var _questionIndex = 0;

  //METHODS
  void _answerQuestion() {
    setState(() {
        _questionIndex++;
    });
    print(_questionIndex);
  }

  //WIDGET TREE
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
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: _answerQuestion,
            ),
            Question(questions[1]),
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

