import 'package:flutter/material.dart';
import 'package:quiz_app/models/quizModel.dart';
import 'package:quiz_app/resultPage.dart';

class QuizPage extends StatefulWidget {
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int quizIndex = 0;
  int? selectedAnswerIndex;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Score: $score',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 50),
              Text(
                'Quiz No: ${quizIndex+1} / ${allQuiz.length}', style: TextStyle(fontSize: 20),),
              SizedBox(height: 10),
              Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 30),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.deepOrangeAccent),
                  child: Text(
                    allQuiz[quizIndex].question,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              Container(
                height: 300,
                child: ListView.builder(
                  itemCount: allQuiz[quizIndex].answers.length,
                  itemBuilder: (context, index) =>
                      Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              backgroundColor: index == selectedAnswerIndex
                                  ? Colors.purpleAccent
                                  : Colors.amber),
                          onPressed: () {
                            setState(() {
                              selectedAnswerIndex = index;
                            });
                            print(index);
                          },
                          child: Text(allQuiz[quizIndex].answers[index].answer),
                        ),
                      ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.deepPurple),
                    onPressed:
                    //If this last question go to Result Page
                    //else Go to next Quiz
                    quizIndex == allQuiz.length - 1
                        ? gotoResultPage()
                        : selectedAnswerIndex == null
                        ? null
                        : () {

                      if (allQuiz[quizIndex]
                          .answers[selectedAnswerIndex!]
                          .isCorrect) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Correct!'),
                          duration: Duration(seconds: 1),
                          backgroundColor: Colors.green,
                        ));
                        setState(() {
                          score = score + 10;
                        });
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Wrong!'),
                          duration: Duration(seconds: 1),
                          backgroundColor: Colors.red,
                        ));
                      }

                      selectedAnswerIndex = null;
                      if (quizIndex < allQuiz.length - 1) {
                        setState(() {
                          quizIndex++;
                        });

                      }


                      // setState(() {
                      // });
                    },
                    child: Text(quizIndex == allQuiz.length - 1
                        ? 'Submit'
                        : 'Next Quiz')),
              ),
            ],
          ),
        ),
      ),
    );
  }

  gotoResultPage() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ResultPage(score: score)));
  }
}
