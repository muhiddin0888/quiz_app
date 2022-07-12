class QuizData {
  QuizData({
    required this.question,
    required this.variant1,
    required this.variant2,
    required this.variant3,
    required this.variant4,
    required this.trueAnswer,
  });
  final String question;
  final String variant1;
  final String variant2;
  final String variant3;
  final String variant4;
  final String trueAnswer; //A, B, C, D
}
