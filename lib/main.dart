import 'package:flutter/material.dart';
import './question.dart';

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
      'What is ur favorite color?',
      'What is your favorite animal?',
      'Check Out this video',
      'Dammm!',
      'What if I change somthing',
    ];
    return MaterialApp(
        //Widgets tree
        home: Scaffold(
      appBar: AppBar(
        title: Text('UYFC App'),
      ),
      body: Column(
        children: [
          Question(questions[
              _questionIndex]), // Question is a class in question.dart
          RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
          RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
        ],
      ),
    ));
  }
}
