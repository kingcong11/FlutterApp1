import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/* Widgets */
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  // Map / JSON inside List
  var questions = [
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
          // color: const Color(0xFFffd6cc),
          child: (_questionIndex < questions.length) ? Column(
                  children: [
                    Question(questions[_questionIndex]['questionText']),
                    ...(questions[_questionIndex]['availableAnswers']
                            as List<Map>)
                        .map((answer) {
                      return Answer(
                        _answerQuestion,
                        answer['value'],
                        baseColor: answer['colorCode'],
                        bgColor: answer['bgColorCode'],
                      );
                    }).toList(),
                  ],
                ) : Center(
                  child: Text('You finished the Survey!'),
                ),
        ),
      ),
    );
  }
}
