//PACKAGES
import 'package:flutter/material.dart';

//LIBRARIES
import './question.dart';
import './answer.dart';

//CLASS DEFINITION
class Quiz extends StatelessWidget {
  //PROPERTIES
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  //METHODS
  //CONSTRUCTOR
  Quiz(this.answerQuestion, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        // ignore: sdk_version_ui_as_code
        ...(questions[questionIndex]['answersText']
                as List<Map<String, Object>>)
            .map((answersText) {
          //... is the spread operator to turn the list into individual widgets.
          return Answer(
              () => answerQuestion(answersText['score']), answersText['text']);
        }).toList(),
      ],
    );
  }
}
