import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'You finished the Survey!',
        style: TextStyle(fontSize: 40),
        textAlign: TextAlign.center,
      ),
    );
  }
}
