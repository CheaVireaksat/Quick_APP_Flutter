import 'package:flutter/material.dart';
import 'package:quickApp/result.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State {
  final _questions = const [
    // Never Change Value
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
      ],
    }, // Map
    {
      'questionText': 'What\'s your favorite Animal?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite Instructor?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Dog', 'score': 4},
        {'text': 'Cat', 'score': 1},
      ],
    }
  ];
  // _MyAppState is a private properties (_ is a syntax that make privat properties)
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      // True
      print('We have more questions');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // build method get call after we change the index-question in setstate

    return MaterialApp(
        //Widgets tree
        home: Scaffold(
      appBar: AppBar(
        title: Text('UYFC App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              // witdget from quiz.dart
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore), // widget from result.dart
    ));
  }
}
