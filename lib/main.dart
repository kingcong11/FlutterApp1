import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/* Widgets */
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  // Map / JSON inside List
  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'availableAnswers': [
        {'value': 'Blue', 'score': 4, 'colorCode': 0xFF3399FF, 'bgColorCode': 0xFFc7e3ff},
        {'value': 'Red', 'score': 10, 'colorCode': 0xFFe30d2a, 'bgColorCode': 0xFFfccad1},
        {'value': 'Green', 'score': 1, 'colorCode': 0xFF0cca15, 'bgColorCode': 0xFFcafccc},
        {'value': 'Orange', 'score': 7, 'colorCode': 0xFFf27521, 'bgColorCode': 0xFFfcdeca},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'availableAnswers': [
        {'value': 'Panda', 'score': 7, 'colorCode': 0xFF000000, 'bgColorCode': 0xFFFFFFFF},
        {'value': 'Lamma', 'score': 4, 'colorCode': 0xFFd9cc99, 'bgColorCode': 0xFFFFFFFF},
        {'value': 'Tiger', 'score': 10, 'colorCode': 0xFFff704d, 'bgColorCode': 0xFFFFFFFF},
        {'value': 'Owl', 'score': 1, 'colorCode': 0xFF7d5226, 'bgColorCode': 0xFFFFFFFF},
      ],
    },
  ];

  void _answerQuestion(int score) {

    _totalScore+= score;

    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
            'Painter>', 
            style: TextStyle(fontSize: 50, fontFamily: 'Painter', color: Colors.black),
            ),
          ),
        ),
        body: Container(
          child: (_questionIndex < _questions.length) ? 
            Quiz(
              questions: _questions, 
              questionIndex: _questionIndex, 
              answerQuestion: _answerQuestion
            ) : 
            Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }
}
