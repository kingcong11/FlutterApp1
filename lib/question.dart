import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Question extends StatelessWidget {
  final String questionText;

  // The constructor requuires a value to be put in this.questionText
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFeb5775),
        borderRadius: BorderRadius.circular(9),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 2)),
        ],
      ),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
