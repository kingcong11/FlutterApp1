import 'package:flutter/material.dart';

/* Widgets */
import './question.dart';

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
    setState((){
      _questionIndex+=1;
    });
    
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    var questions = [
      'What\'s your favorite color',
      'What\'s your favorite animal'
    ];

    return MaterialApp(
      home: Scaffold( 

        appBar: AppBar(
          title: Text('Notex'),
        ),

        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer4'),
              onPressed: _answerQuestion,
            ),
          ],
        ),

      ),
    );

  }
}
