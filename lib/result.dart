import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int totalScore;

  Result(this.totalScore);

  /* Getter */

  String get resultPhrase{
    
    String resultText = 'You completed the Survey.',
           assumption = '';

    if (totalScore <= 10) {
      assumption = 'You are innocent!';
    } else if (totalScore <= 15) {
      assumption = 'You are pretty likeable!';
    } else {
      assumption = 'You are a kind of a dark person!';
    }

    var finalPhrase = resultText + assumption;
  
    return finalPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontFamily: 'Painter'),
        textAlign: TextAlign.center,
      ),
    );
  }
}
