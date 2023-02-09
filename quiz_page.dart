import 'package:flutter/material.dart';
import 'package:quiz_app/models/quizModel.dart';

class QuizPage extends StatefulWidget {
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int quizIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Quiz'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(allQuiz[quizIndex].question, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Container(
                height: 50,
                width: double.infinity,
                child: Center(
                  child: ListView.builder(
                    itemCount: allQuiz[quizIndex].answers.length,
                    itemBuilder: (context, index) => Center(
                        child: Text(allQuiz[quizIndex].answers[index].answer)),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (quizIndex < allQuiz.length - 1) {
                        quizIndex++;
                      }
                    });
                  },
                  child: Text(quizIndex == allQuiz.length - 1
                      ? 'Submit'
                      : 'Next Quiz')),
            ],
          ),
        ),
      ),
    );
  }
}
