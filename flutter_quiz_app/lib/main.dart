import 'package:flutter/material.dart';
import 'question_list.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuestionList questionList = QuestionList();

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: QuizApp(),
      ),
    ),
  ));
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int questionNumber = 0;
  int correctScore = 0;
  int wrongScore = 0;

  List<Icon> scoreKeeperIcon = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 7,
            child: Center(
              child: Text(
                scoreKeeperIcon.length >
                        questionList.getQuestionListLenght() - 1
                    ? 'You Have Done All Question\nCorrect: $correctScore\nWrong: $wrongScore'
                    : questionList.getQuestionText(),
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FlatButton(
            color: Colors.green,
            child: Text(
              'True',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            onPressed: () {
              bool correctAnswer = questionList.getQuestionAnswer();
              setState(() {
                questionList.nextQuestion();

                if (questionList.getQuestionListLenght() - 1 >=
                    scoreKeeperIcon.length) {
                  if (correctAnswer == true) {
                    scoreKeeperIcon.add(Icon(
                      Icons.check,
                      color: Colors.green,
                    ));
                    correctScore++;
                  } else {
                    scoreKeeperIcon.add(Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                    wrongScore++;
                  }
                } else {
                  Alert(
                    context: context,
                    title: "Correct: $correctScore",
                    desc: "Wrong: $wrongScore",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "Restart",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          setState(() {
                            questionList.resetQuestion();
                            correctScore = 0;
                            wrongScore = 0;
                            scoreKeeperIcon.clear();
                          });
                        },
                        width: 120,
                      )
                    ],
                  ).show();
                }
              });
            },
          ),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FlatButton(
            color: Colors.red,
            child: Text(
              'False',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            onPressed: () {
              bool correctAnswer = questionList.getQuestionAnswer();
              setState(() {
                questionList.nextQuestion();

                if (questionList.getQuestionListLenght() - 1 >=
                    scoreKeeperIcon.length) {
                  if (correctAnswer == false) {
                    scoreKeeperIcon.add(Icon(
                      Icons.check,
                      color: Colors.green,
                    ));
                    correctScore++;
                  } else {
                    scoreKeeperIcon.add(Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                    wrongScore++;
                  }
                } else {
                  Alert(
                          context: context,
                          title: "RFLUTTER",
                          desc: "Flutter is awesome.")
                      .show();
                }
              });
            },
          ),
        )),
        Padding(
          padding: const EdgeInsets.only(
              left: 10.0, right: 10.0, top: 2, bottom: 12),
          child: Row(
            children: scoreKeeperIcon,
          ),
        )
      ],
    );
  }
}
