import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String questionText;

  // The constructor requuires a value to be put in this.questionText
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}