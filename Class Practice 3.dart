void main() {
  Quiz quiz1 = Quiz(question: 'What is capital of Bangladesh?', answers: [
    Answer('Gazipur', false),
    Answer('Tangail', false),
    Answer('Dhaka', true),
    Answer('Narayanganj', false)
  ]);
  
  
  

  print(quiz1.question);

  for (int i = 0; i < quiz1.answers.length; i++) {
    if (quiz1.answers[i].isTrue == true) {
      print(quiz1.answers[i].answer);
    }
  }
  
  
  


}




class Quiz {
  String question;

  List<Answer> answers;

  Quiz({required this.question, required this.answers});
}

class Answer {
  String answer;
  bool isTrue;

  Answer(this.answer, this.isTrue);
}








