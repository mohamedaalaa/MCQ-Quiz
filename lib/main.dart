import 'dart:ffi';

import 'package:exam/widgets/answer.dart';
import 'package:exam/screens/enter_data.dart';
import 'package:exam/widgets/questions.dart';
import 'package:exam/widgets/quiz.dart';
import 'package:exam/widgets/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home:const EnterData(),
    theme: ThemeData(
      primaryColor: Colors.purple,
    ),
  ));
}
