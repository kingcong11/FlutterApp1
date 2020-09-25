import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer4'),
              onPressed: null,
            ),
          ],
        ),

      ),
    );
  }
}
