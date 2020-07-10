import 'package:quizApp/utils/question.dart';

class Quiz {
  List<Question> _questions;
  int _currentQuestion = -1;
  int _score = 0;
  Quiz(this._questions) {
    _questions.shuffle();
  }
  int get score => _score;
  List<Question> get questions => _questions;
  int get length => _questions.length;
  int get questionNumber => _currentQuestion + 1;

  Question get nextQuestion {
    _currentQuestion++;
    if (_currentQuestion >= length) {
      return null;
    } else {
      return _questions[_currentQuestion];
    }
  }

  void answer(bool isCorrect) {
    if (isCorrect) {
      _score++;
    }
  }
}
