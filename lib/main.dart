import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State {
  // _MyAppState is a private properties (_ is a syntax that make privat properties)
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // build method get call after we change the index-question in setstate
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answer': ['Black', 'Red', 'Red', 'Green'],
      },
      {
        'questionText': 'What\'s your favorite Animal?',
        'answer': ['Lion', 'Dog', 'Cat', 'Mouse'],
      },
      {
        'questionText': 'What\'s your favorite Instructor?',
        'answer': ['Lion', 'Dog', 'Cat', 'Mouse'],
      }
    ];
    return MaterialApp(
        //Widgets tree
        home: Scaffold(
      appBar: AppBar(
        title: Text('UYFC App'),
      ),
      body: Column(
        children: [
          Question(questions[_questionIndex]['questionText']), // Question is a class in question.dart
          Answer(answerQuestion),
          Answer(answerQuestion),
          Answer(answerQuestion),
        ],
      ),
    ));
  }
}
