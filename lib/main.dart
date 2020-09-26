import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void answerQuestion() {
    print('Answer Chosen!');
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
            Text('The Question.'),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer4'),
              onPressed: answerQuestion,
            ),
          ],
        ),

      ),
    );

  }
}
