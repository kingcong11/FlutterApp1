import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz({
    @required this.questions, 
    @required this.questionIndex, 
    @required this.answerQuestion
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['availableAnswers'] as List<Map<String, Object>>).map((answer) {
            return Answer(
              () => answerQuestion(answer['score']),
              answer['value'],
              baseColor: answer['colorCode'],
              bgColor: answer['bgColorCode'],
            );
        }).toList(),
      ],
    );
  }
}
