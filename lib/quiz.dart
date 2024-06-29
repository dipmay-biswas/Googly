import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart'; // Adjust the path as per your project structure
import 'package:quiz_app/front_page.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  late Widget activeScreen;

  @override
  void initState() {
    super.initState();
    selectedAnswers = [];
    activeScreen = FrontPage(_switchScreen);
  }

  void _restartQuiz() {
    setState(() {
      selectedAnswers.clear();
      activeScreen = FrontPage(_switchScreen);
    });
  }

  void _switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(_chooseAnswer);
    });
  }

  void _chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(selectedAnswers, _restartQuiz);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 83, 2, 127),
                Color.fromARGB(255, 158, 14, 148),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
