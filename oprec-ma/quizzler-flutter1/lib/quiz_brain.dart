import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: false),
    Question(q: 'A slug\'s blood is green.', a: true),
    Question(q: 'Prontaxan adalah pahlawan warga negara indie', a: true),
    Question(q: 'Dibuat for  omah ti itu benar', a: true),
    Question(q: 'MIPa terletak di MIPA', a: true),
    Question(q: 'MIPa terletak di samping kantin', a: true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
