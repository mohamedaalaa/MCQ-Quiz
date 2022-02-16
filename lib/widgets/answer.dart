import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function() answerQuestion;
  final String answer;

  const Answer({Key? key,required this.answerQuestion,required this.answer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: answerQuestion,
        child: Text(answer,style:const TextStyle(color: Colors.purple,fontSize: 24),),
      ),
    );
  }
}
