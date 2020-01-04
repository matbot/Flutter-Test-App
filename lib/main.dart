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

  final _questions = const [
    //create Map()s of associated questions and their possible answers.
    {
      'questionText': "What's your favorite color?",
      'answersText': [
        {'text': "Black", 'score': 0},
        {'text': "Red", 'score': 3},
        {'text': "Green", 'score': 7},
        {'text': "White", 'score': 10}
      ]
    },
    {
      'questionText': "What's your favorite animal?",
      'answersText': [
        {'text': "Bear", 'score': 0},
        {'text': "Rhino", 'score': 3},
        {'text': "Goose", 'score': 7},
        {'text': "Whale", 'score': 10}
      ]
    },
    {
      'questionText': "What's your favorite food?",
      'answersText': [
        {'text': "Baklava", 'score': 0},
        {'text': "Rice", 'score': 3},
        {'text': "Gyro", 'score': 7},
        {'text': "Worms", 'score': 10}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  //METHODS
  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
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
            : Results(_totalScore, _resetQuiz),
      ),
    );
  }
}
