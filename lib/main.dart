import 'package:flutter/material.dart';
import 'package:flutter_quizz_app/result.dart';

import 'quizz.dart';
import 'result.dart';

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
  final _questions = const [
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
    if (_questionIndex < _questions.length) {
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
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
