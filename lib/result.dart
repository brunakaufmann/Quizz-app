import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Você é incrível e inocente';
    } else if (resultScore <= 12) {
      resultText = 'Você é legal';
    } else if (resultScore <= 16) {
      resultText = 'Você é ... estranho?!';
    } else {
      resultText = 'Você é ruim';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
