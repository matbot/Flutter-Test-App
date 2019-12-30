import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  //PROPERTIES
  var questionIndex = 0;

  //METHODS
  void answerQuestion() {
    setState(() {
        questionIndex++;
    });
    print(questionIndex);
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
            Text(questions[questionIndex]),
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
