import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int totalScore;
  final Function resetHandler;

  Result(this.totalScore, this.resetHandler);

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
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontFamily: 'Painter'),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reset Quiz', style: TextStyle(fontSize: 17, color: Colors.black, letterSpacing: 1.2)),
            onPressed: resetHandler,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
              side: BorderSide(
                color: Colors.black,
                width: 4,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
