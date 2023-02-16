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
  Quiz(
    question: "What is the capital of Bangladesh?",
    answerList: [
      Answer(answer: "Dhaka", isCorrect: true),
      Answer(answer: "Chittagong", isCorrect: false),
      Answer(answer: "Khulna", isCorrect: false),
      Answer(answer: "Rajshahi", isCorrect: false),
    ],
  ),
  Quiz(
    question: "Which river flows through Dhaka?",
    answerList: [
      Answer(answer: "Jamuna", isCorrect: false),
      Answer(answer: "Meghna", isCorrect: true),
      Answer(answer: "Padma", isCorrect: false),
      Answer(answer: "Brahmaputra", isCorrect: false),
    ],
  ),
  Quiz(
    question: "Who is the national poet of Bangladesh?",
    answerList: [
      Answer(answer: "Rabindranath Tagore", isCorrect: false),
      Answer(answer: "Nazrul Islam", isCorrect: false),
      Answer(answer: "Kazi Nazrul Islam", isCorrect: true),
      Answer(answer: "Jibanananda Das", isCorrect: false),
    ],
  ),
  Quiz(
    question: "When did Bangladesh gain independence?",
    answerList: [
      Answer(answer: "1947", isCorrect: false),
      Answer(answer: "1965", isCorrect: false),
      Answer(answer: "1971", isCorrect: true),
      Answer(answer: "1991", isCorrect: false),
    ],
  ),
  Quiz(
    question: "What is the largest country in the world by area?",
    answerList: [
      Answer(answer: "Russia", isCorrect: true),
      Answer(answer: "China", isCorrect: false),
      Answer(answer: "USA", isCorrect: false),
      Answer(answer: "Canada", isCorrect: false),
    ],
  ),
  Quiz(
    question: "Which is the most populous country in the world?",
    answerList: [
      Answer(answer: "India", isCorrect: false),
      Answer(answer: "USA", isCorrect: false),
      Answer(answer: "China", isCorrect: true),
      Answer(answer: "Indonesia", isCorrect: false),
    ],
  ),
  Quiz(
    question: "What is the currency of Japan?",
    answerList: [
      Answer(answer: "Yuan", isCorrect: false),
      Answer(answer: "Dollar", isCorrect: false),
      Answer(answer: "Euro", isCorrect: false),
      Answer(answer: "Yen", isCorrect: true),
    ],
  ),
  Quiz(
    question: "Where is the tallest building in the world located?",
    answerList: [
      Answer(answer: "Dubai", isCorrect: true),
      Answer(answer: "New York", isCorrect: false),
      Answer(answer: "Hong Kong", isCorrect: false),
      Answer(answer: "Shanghai", isCorrect: false),
    ],
  ),
  Quiz(
    question: "Which is the smallest country in the world by area?",
    answerList: [
      Answer(answer: "Monaco", isCorrect: true),
      Answer(answer: "San Marino", isCorrect: false),
      Answer(answer: "Vatican City", isCorrect: false),
      Answer(answer: "Maldives", isCorrect: false),
    ],
  ),
  Quiz(
    question: "What is the largest ocean in the world?",
    answerList: [
      Answer(answer: "Atlantic Ocean", isCorrect: false),
      Answer(answer: "Indian Ocean", isCorrect: false),
      Answer(answer: "Arctic Ocean", isCorrect: false),
      Answer(answer: "Pacific Ocean", isCorrect: true),
    ],
  )
];
