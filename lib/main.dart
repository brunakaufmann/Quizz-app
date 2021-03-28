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
      'answers': [
        {'text': 'Preto', 'score': 10},
        {'text': 'Vermelho', 'score': 6},
        {'text': 'Verde', 'score': 3},
        {'text': 'Branco', 'score': 1}
      ],
    },
    {
      'questionText': 'Qual o seu animal favorito?',
      'answers': [
        {'text': 'Coelho', 'score': 10},
        {'text': 'Cobra', 'score': 6},
        {'text': 'Elefante', 'score': 3},
        {'text': 'Leão', 'score': 1}
      ],
    },
    {
      'questionText': 'Quem é o seu esporte favorito?',
      'answers': [
        {'text': 'Futebol', 'score': 10},
        {'text': 'Volei', 'score': 6},
        {'text': 'Basquete', 'score': 3},
        {'text': 'Futsal', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
          title: Text('Quiz'),
          backgroundColor: Colors.pink,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
