//PACKAGES
import 'package:flutter/material.dart';
//LIBRARIES
import './quiz.dart'; //import custom question widget.
import './results.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //PROPERTIES
  var _questionIndex = 0;
  final _questions = const [
    //create Map()s of associated questions and their possible answers.
    {
      'questionText': "What's your favorite color?",
      'answersText': ["Black", "Red", "Green", "White"]
    },
    {
      'questionText': "What's your favorite animal?",
      'answersText': ["Bear", "Rhino", "Goose", "Whale"]
    },
    {
      'questionText': "What's your favorite food?",
      'answersText': ["Baklava", "Rice", "Gyro", "Worms"]
    },
  ];

  //METHODS
  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  //WIDGET TREE
  @override
  Widget build(BuildContext context) {
    // Note the trailing commas that add some nice autoformatting capability.
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Testing App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Results()
        ,
      ),
    );
  }
}
