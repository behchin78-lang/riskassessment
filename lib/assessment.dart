import 'package:flutter/material.dart';
import 'main_drawer.dart';
import 'assessment1.dart';
import 'result.dart';
class AssessmentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AssessmentPageState();
  }
}


class _AssessmentPageState extends State<AssessmentPage> {
  final _questions = const [
    {
      'questionText': '1. Do you have any of these diseases below?\n • Hypertension\n • Diabetes\n • Asthma\n • Heart Disease',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': '2. Do you have exhibited the symptoms below? Click the symptoms that you are exhibited.',
      'answers': [
        {'text': 'Fever', 'score': 1},
        {'text': 'Cough', 'score': 1},
        {'text': 'Shortness of breath', 'score': 1},
        {'text': 'Sore throat', 'score': 1},
        {'text': 'Two symptoms above', 'score': 2},
        {'text': 'Three symptoms above', 'score': 3},
        {'text': 'All symptoms above', 'score': 4},
        {'text': 'None of the symptoms above', 'score': 0},
      ],
    },
    {
      'questionText': ' 3. Did you travel outside Malaysia in the past 14 days?',
      'answers': [
        {'text': 'Yes', 'score': 2},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': '4. Did you go to the red zones in the past 14 days?',
      'answers': [
        {'text': 'Living in or visited the area ', 'score': 1},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText':
      '5. Did you go to any places associated with any of the COVID19 clusters in the last 14 days?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText':
      '6. Did you contact with a positive COVID-19 case?',
      'answers': [
        {'text': 'Yes', 'score': 2},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText':
      '7. Did you go to any mass gathering in the past 14 days?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
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
      print('You are halfway of the assessment');
    } else {
      print('Done');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ASSESSMENT FORM'),
        ),
        drawer: MainDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(child: _questionIndex < _questions.length
              ? Assessment1(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
          ) //Quiz
              : Result(_totalScore, _resetQuiz),
          ), //Padding
        ), //Scaffold
      ),
    ); //MaterialApp
  }
}