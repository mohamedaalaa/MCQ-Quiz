



import 'package:exam/widgets/quiz.dart';
import 'package:exam/widgets/result.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  final String name;
  const MyApp({Key? key,required this.name}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _totalScore=0;


  @override
  void initState() {
    questions.shuffle();
    super.initState();
  }

  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _index=_index+1;
    });
  }

  void _restartQuiz(){
    setState(() {
      _index=0;
      _totalScore=0;
      questions.shuffle();
    });
  }

  var questions = [
    {
      'question': 'who won the fifa ballon d\'or in 2021',
      'answers': [
        {'text':'Messi','score':1},
        {'text':'Mbabi','score':0},
        {'text':'C.ronaldo','score':0},
        {'text':'M.salah','score':0}
      ]
    },
    {
      'question': 'who is spellbound movie director',
      'answers': [
        {'text':'sbilberg','score':0},
        {'text':'Hitchcock','score':1},
        {'text':'Stanley Kubrieck','score':0},
        {'text':'Jun Luc Jodard','score':0}
      ]
    },
    {
      'question': 'italien composer was in once upon  a time in america movie',
      'answers': [
        {'text':'Bethoffen','score':0},
        {'text':'Mozart','score':0},
        {'text':'Clint Eastwood','score':0},
        {'text':'Enio Moricone','score':1}]
    },
    {
      'question': 'who won the egyptian league title in 2021',
      'answers': [
        {'text':'Al Ahli','score':0},
        {'text':'Ismaily','score':0},
        {'text':'Zamalek','score':1},
        {'text':'ElMasry','score':0}]
    },
    {
      'question': 'when did hetler invade poland',
      'answers': [
        {'text':'1937','score':0},
        {'text':'1938','score':0},
        {'text':'1939','score':1},
        {'text':'1940','score':0},
      ]
    }
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title:  Text(_index<questions.length?'Question $_index':'Result'),
        ),
        body: _index<questions.length
            ? Quiz(
            questions: questions,
            questionIndex: _index,
            answerQuestion: _answerQuestion)
            :  Result(result: _totalScore, name: widget.name, restartQuiz:_restartQuiz,)
    );

  }
}