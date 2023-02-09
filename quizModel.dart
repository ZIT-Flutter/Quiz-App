class Quiz {
  String question;
  List<Answer> answers;

  Quiz({required this.question, required this.answers});
}

class Answer {
  String answer;
  bool isCorrect;

  Answer({required this.answer, required this.isCorrect});
}


List<Quiz> allQuiz = [
  Quiz(question: 'What is your Name?', answers: [
    Answer(answer: 'Amena', isCorrect: true),
    Answer(answer: 'Tanvir', isCorrect: false),
    Answer(answer: 'Mojahid', isCorrect: false),
    Answer(answer: 'Zihan', isCorrect: false),
    Answer(answer: 'Anna', isCorrect: false)
  ]),
  Quiz(question: 'What is the capital of Bangladesh?', answers: [
    Answer(answer: 'Gazipur', isCorrect: false),
    Answer(answer: 'Tangail', isCorrect: false),
    Answer(answer: 'Dhaka', isCorrect: true),
    Answer(answer: 'Comilla', isCorrect: false),
  ]),
  Quiz(question: 'What is the national animal of Bangladesh?', answers: [
    Answer(answer: 'Cat', isCorrect: false),
    Answer(answer: 'Dog', isCorrect: false),
    Answer(answer: 'Tiger', isCorrect: true),
    Answer(answer: 'Cow', isCorrect: false),
  ])
];