import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'You are good!';
    } else if (resultScore <= 12) {
      resultText = 'not bad!';
    } else if (resultScore <= 16) {
      resultText = 'so so!';
    } else if (resultScore <= 20) {
      resultText = 'not good!';
    } else {
      resultText = 'Sex';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('RestartQuiz!'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}
