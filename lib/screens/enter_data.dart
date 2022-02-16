import 'package:exam/screens/quiz_screen.dart';
import 'package:flutter/material.dart';

class EnterData extends StatefulWidget {
  const EnterData({Key? key}) : super(key: key);

  @override
  _EnterDataState createState() => _EnterDataState();
}

class _EnterDataState extends State<EnterData> {
  final _form = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();

  void _startQuiz() {
    final isValid = _form.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (BuildContext context) => MyApp(name: controller.text)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title:const Text('Form'),
        ),
        body: Center(
          child: Form(
            key: _form,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Please fill the form and press start quiz',style: TextStyle(color: Colors.purple),),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: Theme.of(context).primaryColor,
                    controller: controller,
                    decoration:  InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.purple)
                      ),
                      hintText: 'enter your name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your name';
                      } else if (value.length < 7) {
                        return 'name can\'t be less than 5 chars';
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.purple)),
                      onPressed:_startQuiz,
                      child: const Text('Start Quiz'))
                ],
              ),
            ),
          ),
        ),

    );
  }
}
