


import 'package:exam/screens/form.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final String name;
  final Function() restartQuiz;
  const Result({Key? key,required this.result,required this.name,required this.restartQuiz}) : super(key: key);

  String get message{
    String statement='';
    if(result<=1){
      statement= 'low';
    }else if(result==2){
      statement= 'fair';
    }else if(result==3){
      statement= 'good';
    }
    else if(result==4||result==5){
      statement= 'Excellent';
    }
    return statement;
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(

          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('You did it $name',style:const TextStyle(fontSize: 24),),
              const SizedBox(height: 10,),
              Text('score= $result',style: const TextStyle(fontSize: 24,color: Colors.red)),
              const SizedBox(height: 10,),
              Text(message),
              const SizedBox(height: 10,),
              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.purple)),
                onPressed: restartQuiz, child:const Text('Start Again'),)
            ]
          ),
        ),

    );
  }
}
