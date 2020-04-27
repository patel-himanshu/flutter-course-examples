import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Questions> _qna = [
    Questions(
        q: 'Edgar Wright was the original director of Ant-Man (2015).',
        a: true),
    Questions(
        q: 'Emma Fuhrmann plays the role of daughter of Clint Barton.',
        a: false),
    Questions(
        q: 'Originally, the role of Darren Cross was to be played by Patrick Wilson',
        a: false),
    Questions(
        q: 'Zack Snyder referred to Ant-Man (2015) as "Flavour of the Week".',
        a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _qna.length - 1) {
      _questionNumber += 1;
    }
  }

  bool quizFinished() {
    if (_questionNumber > _qna.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  String getQuestion() {
    return _qna[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _qna[_questionNumber].questionAnswer;
  }
}
