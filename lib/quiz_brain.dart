import 'question.dart';
class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank=[
    Question(q: 'Is this a dog', a: false, p: 'Images/cat-talk-eyes-553942-hero-df606397b6ff47b19f3ab98589c3e2ce.jpg'),
    Question(q: 'This animal is omnivore', a: true, p: 'Images/3408.webp'),
    Question(q: 'This animal is eatable', a: true, p: 'Images/pig-1713996_960_720.jpg'),
    Question(q: 'This is chicken', a: true, p: 'Images/rooster-Rhode-Island-Red-roosters-chicken-domestication.webp'),
    Question(q: 'This animal name is kangaru', a: false, p: 'Images/unnamed.png'),
    Question(q: 'This animal is herbivore', a: true, p: 'Images/_122969979_hippo_nicholasmathevon.jpg'),
    Question(q: 'This animal can fly', a: false, p: 'Images/Eagle-in-flight-Richard-Lee-Unsplash-1-edited-scaled.webp'),
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

  String? getQuestionImg() {
    return _questionBank[_questionNumber].questionImg;
  }

}