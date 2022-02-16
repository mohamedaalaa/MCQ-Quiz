


import 'package:exam/widgets/questions.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function(int) answerQuestion;
  List<Map<String, Object>> questions;
  final int questionIndex;
  Quiz({Key? key,required this.questions,required this.questionIndex,required this.answerQuestion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    (questions[questionIndex]['answers'] as List<Map<String,dynamic>>).shuffle();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Questions(question: questions[questionIndex]['question'].toString()),
        const SizedBox(height: 15,),
        ...(questions[questionIndex]['answers'] as List<Map<String,dynamic>>).map((answer) {
          return Answer(answerQuestion:()=>answerQuestion(answer['score']), answer: answer['text']);
        }).toList()
      ],
    );
  }
}
