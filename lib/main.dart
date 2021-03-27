import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

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
      {
        'questionText': 'Qual a sua cor favorita?',
        'answers': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'questionText': 'Qual o seu animal favorito?',
        'answers': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
      },
      {
        'questionText': 'Quem é o seu esporte favorito?',
        'answers': ['Futebol', 'Volei', 'Basquete', 'Futsal'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu Primeiro Aplicativo'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
