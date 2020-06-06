import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);
  // Recive as constructor then store it in the result properties

  String get resultPhrase {
    String resultText = 'You dit it!';
    if (resultScore <= 8){
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 10) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 15) {
      resultText = 'You are stage';
    }else {
      resultText = 'You are so bad';
    }
    return resultText;
  }
  // u need to return somthing in getter
  @override
  Widget build(BuildContext context) {
    return Center(
      // if false it will Block :
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.normal),
        textAlign: TextAlign.center,
      ),
    );
  }
}
