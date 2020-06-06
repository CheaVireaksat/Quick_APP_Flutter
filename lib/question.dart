//Help ur app performance
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // final will lock the value while runtime
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10), // Add space to container
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class EdgeInserts {}
