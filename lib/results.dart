//PACKAGES
import 'package:flutter/material.dart';

//LIBRARIES

//CLASS DEFINITION
class Results extends StatelessWidget {
  //PROPERTIES
  final int finalScore;
  final Function resetQuiz;

  //CONSTRUCTOR
  Results(this.finalScore, this.resetQuiz);

  //METHODS
  String get resultPhrase {
    String resultText;
    if (finalScore <= 8) {
      resultText = "Low";
    } else if (finalScore <= 12) {
      resultText = "Slightly Low";
    } else if (finalScore <= 16) {
      resultText = "Slightly High";
    } else {
      resultText = "High";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              child: Text(
                "Restart Quiz!",
              ),
              textColor: Colors.blue,
              onPressed: resetQuiz),
        ],
      ),
    );
  }
}
