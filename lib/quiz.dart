import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/front_page.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/question_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = FrontPage(switchScreen);
    super.initState();
  }

  void reStartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = FrontPage(switchScreen);
    });
  }

  // build method executed again and again
  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(chooseAnswer);
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(
          selectedAnswers,
          reStartQuiz,
        );
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 174, 0, 255),
                Color.fromARGB(248, 255, 0, 230),
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
