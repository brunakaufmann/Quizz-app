import 'package:flutter/material.dart';

import 'question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Qual a sua cor favorita?',
      'Qual o seu animal favorito?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu Primeiro Aplicativo'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(child: Text('Resposta 1'), onPressed: _answerQuestion),
            RaisedButton(child: Text('Resposta 2'), onPressed: _answerQuestion),
            RaisedButton(child: Text('Resposta 3'), onPressed: _answerQuestion),
          ],
        ),
      ),
    );
  }
}
