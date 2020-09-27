import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function callbackHandler;

  Answer(this.callbackHandler);

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
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 1.5),
          )
        ],
      ),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        color: Colors.orange[600],
        padding: EdgeInsets.all(10),
        child: Text(
          'Sample Text',
          style: TextStyle(fontSize: 17, color: Colors.white),
        ),
        onPressed: callbackHandler,
      ),
    );
  }
}
