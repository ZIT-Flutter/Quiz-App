import 'package:flutter/material.dart';
class QuizPage extends StatefulWidget {

  final String recievedName;


  const QuizPage({Key? key, required this.recievedName}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Quiz'),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('\nHello ${widget.recievedName}. \n\nStart Your Quiz\n\n\n', style: TextStyle(fontSize: 25),),
            Text('Who is inventor of Programming Language? \n\n'),
            Text('1) Person 1'),
            Text('2) Bill gates'),
            Text('3) Bill gates'),
            Text('4) Bill gates'),

            Text('(20+3)'),


          ],
        ),
      ),
    );
  }
}
