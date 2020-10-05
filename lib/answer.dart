import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Answer extends StatelessWidget {
  final Function callbackHandler;
  final String answerText;
  final int baseColor, bgColor;

  Answer(this.callbackHandler, this.answerText, {this.baseColor, this.bgColor});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 150,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: -3,
            blurRadius: 7,
            offset: Offset(0, 1.5),
          )
        ],
      ),
      child: FlatButton(
        child: Text(
          answerText,
          style: TextStyle(fontSize: 17, color: Colors.black, letterSpacing: 1.2),
        ),
        onPressed: callbackHandler,
        color: Color(bgColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: BorderSide(
            color: Color(baseColor),
            width: 4,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
