import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState((){
      questionIndex+=1;
    });
    
    print(questionIndex);
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
            Text(questions[questionIndex]),
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
