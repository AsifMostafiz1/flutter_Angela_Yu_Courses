import 'questions.dart';

class QuestionList{

  int _getQuestionNumber = 0;
  List<Question> _questionBank = [
    Question('Dhaka is The capital of Bangladesh', true),
    Question('Bangladesh have 9 districts', false),
    Question('Dhaka is the biggest city all over the world', false),
    Question('Dhaka is The capital of Bangladesh', true),
    Question('Bangladesh have 9 districts', false),
    Question('Dhaka is The capital of Bangladesh', true),
  ];

  String getQuestionText(){
    return _questionBank[_getQuestionNumber].questionName;
  }

  bool getQuestionAnswer(){
    return _questionBank[_getQuestionNumber].questionAnswer;
  }

  void nextQuestion(){
    if(_getQuestionNumber<_questionBank.length-1){
      _getQuestionNumber++;
    }
  }
  int getQuestionListLenght(){
    return _questionBank.length;
  }

  void resetQuestion(){
    _getQuestionNumber=0;
  }



}