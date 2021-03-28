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
  final questions = const [
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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print('Temos mais respostas');
    } else {
      print('Sem mais respostas!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu Primeiro Aplicativo'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('Você Conseguiu!'),
              ),
      ),
    );
  }
}
