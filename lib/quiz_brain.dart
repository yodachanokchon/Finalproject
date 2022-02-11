import 'question.dart';
class QuizBrain {

  int _questionNumber = 0;

  //TODO 2: ปรับเปลี่ยนหรือเพิ่มชุดคำถามใน questionBank
  List<Question> _questionBank=[
    Question(q: '1 + 1 = 2', a: true),
    Question(q: '1 + 3 = 4', a: true),
    Question(q: '1 + 1 = 3', a: false),
    Question(q: '69 + 69 = 138', a: true),
    Question(q: '420 + 69 = 479', a: false),
    Question(q: '3246 - 346 = 2800', a: false),
    Question(q: '23 x 43 = 989', a: true),
    Question(q: '563 x 12 = 6656', a: false),
    Question(q: '5648 x 7548 = 42631104', a: true),
    Question(q: '24355 x 23596 = 574780580', a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length-1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

}