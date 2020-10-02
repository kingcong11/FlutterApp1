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

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // Map / JSON inside List
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'availableAnswers': [
          {'value': 'Blue', 'colorCode': 0xFF002aff, 'bgColorCode': 0xFFc7d0ff},
          {'value': 'Red', 'colorCode': 0xFFe30d2a, 'bgColorCode': 0xFFfccad1},
          {'value': 'Green', 'colorCode': 0xFF0cca15, 'bgColorCode': 0xFFcafccc},
          {'value': 'Orange', 'colorCode': 0xFFf27521, 'bgColorCode': 0xFFfcdeca},
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'availableAnswers': [
          {'value': 'Panda', 'colorCode': '0xFF002aff'},
          {'value': 'Lamma', 'colorCode': '0xFF002aff'},
          {'value': 'Tiger', 'colorCode': '0xFF002aff'},
          {'value': 'Owl', 'colorCode': '0xFF002aff'},
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notex'),
        ),
        body: Container(
          // color: const Color(0xFFffd6cc),
          child: Column(
            children: [
              Question(questions[_questionIndex]['questionText']),
              ...(questions[_questionIndex]['availableAnswers'] as List<Map>).map((answer) {
                return Answer(_answerQuestion, answer['value'], baseColor: answer['colorCode'], bgColor: answer['bgColorCode'],);
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
