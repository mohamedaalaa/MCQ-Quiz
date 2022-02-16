import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  String question;
  Questions({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        question,
        style: const TextStyle(color: Colors.black, fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
