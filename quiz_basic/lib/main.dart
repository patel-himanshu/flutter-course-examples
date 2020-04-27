import 'package:flutter/material.dart';
import 'questions.dart';

void main() => runApp(Quiz());

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[700],
          title: Center(child: Text('Quiz')),
        ),
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  // List<String> questions = [
  //   'Edgar Wright was the original director of Ant-Man (2015).',
  //   'Emma Fuhrmann plays the role of daughter of Clint Barton.',
  //   'Originally, the role of Darren Cross was to be played by Patrick Wilson.',
  //   'Zack Snyder referred to Ant-Man (2015) as "Flavour of the Week".'
  // ];

  // List<bool> answers = [true, false, false, true];

  List<Questions> qna = [
    Questions(q: 'Edgar Wright was the original director of Ant-Man (2015).', a: true),
    Questions(q: 'Emma Fuhrmann plays the role of daughter of Clint Barton.', a: false),
    Questions(q: 'Originally, the role of Darren Cross was to be played by Patrick Wilson', a: false),
    Questions(q: 'Zack Snyder referred to Ant-Man (2015) as "Flavour of the Week".', a: true),
  ]; 

  int questionNumber = 0;
  int score = 0;

  void correctResponse() {
    score += 1;
    scoreKeeper.add(
      Icon(
        Icons.check,
        color: Colors.green,
      ),
    );
  }

  void wrongResponse() {
    scoreKeeper.add(
      Icon(
        Icons.close,
        color: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                qna[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(
                  () {
                    if (qna[questionNumber].questionAnswer == true) {
                      correctResponse();
                    } else {
                      wrongResponse();
                    }
                    questionNumber += 1;
                  },
                );
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(
                  () {
                    if (qna[questionNumber].questionAnswer == false) {
                      correctResponse();
                    } else {
                      wrongResponse();
                    }
                    questionNumber += 1;
                  },
                );
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  'Your Score is $score',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: scoreKeeper,
          ),
        )
      ],
    );
  }
}
