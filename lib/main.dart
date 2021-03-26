import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
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
            Text(questions[questionIndex]),
            RaisedButton(child: Text('Resposta 1'), onPressed: answerQuestion),
            RaisedButton(child: Text('Resposta 2'), onPressed: answerQuestion),
            RaisedButton(child: Text('Resposta 3'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
