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

  // Map / JSON inside List
  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'availableAnswers': [
        {'value': 'Blue', 'colorCode': 0xFF3399FF, 'bgColorCode': 0xFFc7e3ff},
        {'value': 'Red', 'colorCode': 0xFFe30d2a, 'bgColorCode': 0xFFfccad1},
        {'value': 'Green', 'colorCode': 0xFF0cca15, 'bgColorCode': 0xFFcafccc},
        {'value': 'Orange', 'colorCode': 0xFFf27521, 'bgColorCode': 0xFFfcdeca},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'availableAnswers': [
        {'value': 'Panda', 'colorCode': 0xFF000000, 'bgColorCode': 0xFFFFFFFF},
        {'value': 'Lamma', 'colorCode': 0xFFd9cc99, 'bgColorCode': 0xFFFFFFFF},
        {'value': 'Tiger', 'colorCode': 0xFFff704d, 'bgColorCode': 0xFFFFFFFF},
        {'value': 'Owl', 'colorCode': 0xFF7d5226, 'bgColorCode': 0xFFFFFFFF},
      ],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notex'),
        ),
        body: Container(
          child: (_questionIndex < _questions.length) ? 
            Quiz(
              questions: _questions, 
              questionIndex: _questionIndex, 
              answerQuestion: _answerQuestion
            ) : 
            Result(),
        ),
      ),
    );
  }
}
